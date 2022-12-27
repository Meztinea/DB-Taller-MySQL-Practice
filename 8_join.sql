--@Meztinea

-- Traer la marca y el modelo (join 2 tablas)
SELECT 
    UPPER(marcas.marca) AS Marca,
    UPPER(modelos.modelo) AS Modelo
FROM modelos
INNER JOIN marcas ON modelos.marca_id = marcas.id_marca;


-- Traer la marca, modelo y compañia de cada equipo (join 4 tablas)
SELECT 
    CONCAT(marcas.marca, ' ', modelos.modelo) AS 'Marca - Modelo' ,
    companias.compania AS compania
FROM equipos 
INNER JOIN modelos ON equipos.modelo_id = modelos.id_modelo
INNER JOIN marcas ON modelos.marca_id = marcas.id_marca
INNER JOIN companias ON equipos.compania_id = companias.id_compania;


-- Traer los equipos de cada cliente, las fechas en las que ingresaron y salieron (join 6 tablas)
SELECT 
    CONCAT(clientes.nombre, ' ', clientes.apellido_p, ' ', apellido_m) AS cliente,
    folios.fecha_apertura AS fecha_recepcion,
    folios.fecha_cierre AS fecha_entrega,
    CONCAT(marcas.marca, ' ', modelos.modelo) AS 'Marca - Modelo' ,
    companias.compania AS compania
FROM clientes
INNER JOIN folios ON clientes.id_cliente = folios.cliente_id
INNER JOIN equipos ON folios.equipo_id = equipos.id_equipo
INNER JOIN modelos ON equipos.modelo_id = modelos.id_modelo
INNER JOIN marcas ON modelos.marca_id = marcas.id_marca
INNER JOIN companias ON equipos.compania_id = companias.id_compania;


-- Traer todos los datos de una nota dependiendo del id del folio (join 8 tablas)
SELECT 
    folios.id_folio AS folio,
    DATE(folios.fecha_apertura) AS fecha_rec,
    CONCAT(clientes.nombre, ' ', clientes.apellido_p, ' ', clientes.apellido_m) AS cliente,
    clientes.telefono AS tel_cliente,
    marcas.marca AS marca,
    modelos.modelo AS modelo,
    equipos.imei AS imei,
    companias.compania AS compañia,
    equipos.falla AS falla,
    servicios.servicio AS servicio,
    servicios.precio AS precio,
    folios.total AS total,
    folios.anticipo AS anticipo,
    folios.resto_pendiente AS resto,
    folios.total_cobrado AS cobrado,
    equipos.observaciones_de_recepcion AS obs_rec,
    folios.fecha_cierre AS fecha_cierre,
    equipos.observaciones_de_entrega AS obs_ent
FROM folios 
INNER JOIN clientes ON folios.cliente_id = clientes.id_cliente
INNER JOIN equipos ON folios.equipo_id = equipos.id_equipo
INNER JOIN companias ON equipos.compania_id = companias.id_compania
INNER JOIN modelos ON equipos.modelo_id = modelos.id_modelo
INNER JOIN marcas ON modelos.marca_id = marcas.id_marca
INNER JOIN equipos_servicios ON equipos.id_equipo = equipos_servicios.equipo_id
INNER JOIN servicios ON equipos_servicios.servicio_id = servicios.id_servicio
WHERE id_folio = 15\G;
