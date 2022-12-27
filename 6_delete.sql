-- @Meztinea

-- Eliminación de datos en cascada - Eliminación de un cliente
DELETE FROM clientes WHERE id_cliente = 1;

-- Eliminando celulares con compañia telcel 
DELETE FROM equipos WHERE compania_id = 1;

-- Elimiando folios donde el total es mayor a 950 y menor a 280
DELETE FROM folios WHERE total > 950 OR total < 280;

-- Eliminando folios donde se dejó un anticipo
DELETE FROM folios WHERE anticipo != 0;

-- Eliminando folios donde no se cobró el servicio / no se reparó el telefono
DELETE FROM folios WHERE total_cobrado = 0;