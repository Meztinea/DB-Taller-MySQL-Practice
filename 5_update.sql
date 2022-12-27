-- @Meztinea

-- Actualizando numero de teléfono cliente 1
UPDATE clientes SET telefono = '4447775525' WHERE id_cliente = 16;

-- Actualizando nombre de cliente 'Madonna'
UPDATE clientes SET nombre = 'Madonna Berenice' 
WHERE nombre = 'Madonna' AND apellido_p  = 'Louse' AND apellido_m = 'Ciccone';

-- Actualizando numero de telefono condicionando nombre completo
UPDATE clientes SET telefono = '9988774455' 
WHERE nombre = 'Alanis Nadine' AND apellido_p  = 'Morissette';

-- Actualizando garantía (Observacioens_entrega) a telefonos estrellados 
UPDATE equipos SET observaciones_de_entrega = 'Garantía 15 días' WHERE falla = 'Estrellado';
