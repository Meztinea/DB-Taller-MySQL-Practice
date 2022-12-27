-- Meztinea


-- Mostrar las notas por cliente (todos los folios del mismo cliente)
DELIMITER //

CREATE PROCEDURE folios_cliente(id_cliente INT)
BEGIN
    SELECT * FROM folios WHERE cliente_id = id_cliente;
END//

DELIMITER ;


-- Mostrar los días que ha tardado una reparación (por id de folio)
DELIMITER //

CREATE PROCEDURE dias_reparacion(folio_id INT)
BEGIN
    SET @apertura = (SELECT fecha_apertura FROM folios WHERE id_folio = folio_id);
    SET @cierre = (SELECT fecha_cierre FROM folios WHERE id_folio = folio_id);
    SELECT DATEDIFF(@cierre, @apertura) AS Dias_en_reparación;
END//

DELIMITER ;


-- Mostar el nombre del servicio más solicitado y la cantidad en un més específico 
-- (servicio más común del mes, cantidad de veces que fue solicitado)
-- Procedure que crea una tabla temporal
DELIMITER //

CREATE PROCEDURE servicio_mas_solicitado()
BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS servicio_mas_solicitado 
        SELECT 
            servicio_id, 
            COUNT(servicio_id) AS Conteo 
        FROM equipos_servicios 
        GROUP BY servicio_id 
        ORDER BY Conteo DESC 
        LIMIT 1;

    SELECT 
    servicios.id_servicio,
    servicios.servicio,
    servicios.precio,
    servicio_mas_solicitado.conteo AS Cantidad_solicitudes 
    FROM servicios 
    INNER JOIN servicio_mas_solicitado ON servicios.id_servicio = servicio_mas_solicitado.servicio_id;
END//

DELIMITER ;



-- Nombre cliente (por id), marca, modelo, compañia, falla, servicio, fecha recp, fecha_entrega, días en reparación
-- Procedure que hace llamado a una función 
DELIMITER //

CREATE PROCEDURE equipos_cliente(id_cliente INT)
BEGIN
    SELECT
    CONCAT(clientes.nombre, ' ', clientes.apellido_p, ' ', clientes.apellido_m) AS Cliente,
    marcas.marca AS Marca,
    modelos.modelo AS Modelo,
    companias.compania AS Compania,
    equipos.falla AS Falla, 
    servicios.servicio AS Servicio,
    folios.fecha_apertura AS Fecha_Recepción,
    folios.fecha_cierre AS Fecha_Entrega,
    contar_dias(folios.id_folio) AS Días_en_reparación
    FROM folios
    INNER JOIN clientes ON folios.cliente_id = clientes.id_cliente
    INNER JOIN equipos ON folios.equipo_id = equipos.id_equipo
    INNER JOIN modelos ON equipos.modelo_id = modelos.id_modelo
    INNER JOIN marcas ON modelos.marca_id  = marcas.id_marca 
    INNER JOIN companias ON equipos.compania_id = companias.id_compania
    INNER JOIN equipos_servicios ON equipos.id_equipo = equipos_servicios.equipo_id
    INNER JOIN servicios ON equipos_servicios.servicio_id = servicios.id_servicio
    WHERE cliente_id = id_cliente;
END//

DELIMITER ;

