-- @Meztinea

-- Vista que incluye los equipos de cada cliente, las fechas en las que ingresaron y salieron
CREATE OR REPLACE VIEW equipo_cliente_vw AS
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


--- Vista que incluye todos los datos de un folio
CREATE OR REPLACE VIEW folios_completos_vw AS 
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
INNER JOIN servicios ON equipos_servicios.servicio_id = servicios.id_servicio\G;



-- Vista que muestra la marca, modelo, falla y servicio de cada folio
CREATE OR REPLACE VIEW equipos_servicios_vw AS
SELECT 
    marcas.marca AS Marca,
    modelos.modelo AS Modelo,
    equipos.falla AS Falla,
    servicios.servicio AS Servicio
FROM equipos
INNER JOIN companias ON equipos.compania_id = companias.id_compania
INNER JOIN modelos ON equipos.modelo_id = modelos.id_modelo
INNER JOIN marcas ON modelos.marca_id = marcas.id_marca
INNER JOIN equipos_servicios ON equipos.id_equipo = equipos_servicios.equipo_id
INNER JOIN servicios ON equipos_servicios.servicio_id = servicios.id_servicio;

