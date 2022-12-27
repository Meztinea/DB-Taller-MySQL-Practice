-- @Meztinea

-- Buscándo clientes de apellido Sánchez
SELECT nombre AS Nombre, apellido_p AS Apellido_Paterno FROM clientes WHERE apellido_p = 'Sánchez';

-- Buscando clientes de apellido Sánchez y con número de teléfono registrado
SELECT nombre AS Nombre, apellido_p AS Apellido_Paterno, telefono AS Tel FROM clientes 
WHERE apellido_p = 'Sánchez' AND telefono IS NOT NULL;

-- Buscnado clientes cuyo apellido paterno se encuentra entre la A y la L
SELECT nombre, apellido_p, apellido_m FROM clientes WHERE apellido_p BETWEEN 'A' AND 'L';

-- Buscando clientes de apellidos Sánchez Hernández
SELECT nombre, apellido_p, apellido_m FROM clientes 
WHERE apellido_p = 'Sánchez' OR apellido_m = 'Hernández';

-- Buscnado clientes que sí tienen registrado su número de teléfono
SELECT nombre, apellido_p FROM clientes WHERE telefono IS NOT NULL;

-- Buscnado clientes que no tienen registradoo su número de teléfono
SELECT * FROM clientes WHERE telefono <=> NULL;

-- Buscando clientes cuyo apellido paterno se encuentre en los apellidos de la lista
SELECT nombre, apellido_p FROM clientes 
WHERE apellido_p IN ('Martínez', 'Hernández', 'Rodríguez', 'Gutierrez', 'Sánchez'); 

-- Buscando equipos (celulares) cuya falla es ESTRELLADO
SELECT * FROM equipos WHERE falla = 'Estrellado';

-- Buscando equipos cuya compañia es Telcel id(1)
SELECT * FROM equipos WHERE compania_id = 1;

-- Buscando los modelos de la marca Motorola 
SELECT * FROM modelos WHERE marca_id = 2;

-- Buscando los equipos que han sido reparados de centro de carga
SELECT * FROM equipos_servicios WHERE servicio_id IN (1, 2, 3, 4, 5, 6);

-- Buscando los precios de los servicios de cambio de display (pantalla)
SELECT precio FROM servicios WHERE servicio = 'display';

-- Buscando los folios que fueron cerrados en el mes de noviembre 2022 (telefonos reparados y entregados)
SELECT * FROM folios WHERE fecha_cierre BETWEEN '2022-11-01' AND '2022-11-30';

-- Concatenando el nombre completo y convirtiendo a mayúsculas
SELECT UPPER(CONCAT(nombre, ' ', apellido_p, ' ', apellido_m)) AS Nombre_completo FROM clientes;

-- Imprimir si el celular se reparó o no y cuanto se cobró
SELECT IF( total_cobrado != 0, CONCAT('El celular sí se reparó: Total cobrado ', total_cobrado), 'El celular no se reparó') FROM folios;

-- Imprimir si el cliente tiene registrado su telefono o no 
SELECT IFNULL(telefono, 'El cliente no cuenta con teléfono') FROM clientes;
