-- @Meztinea

-- Transacciones - Usando transacciones con procedimientos
-- Agregar un modelo con su respectiva marca, buscando la marca ya existente en la base de datos

DELIMITER //

CREATE PROCEDURE agregar_modelo(modelo VARCHAR(45), input_marca VARCHAR(45))
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Marca no encontrada en la Base de Datos' AS Error;
    END;

    START TRANSACTION;

    SET @id_marca = (SELECT id_marca FROM marcas WHERE marca = input_marca); 
    INSERT INTO modelos(modelo, marca_id) VALUES (modelo, @id_marca);
    
    COMMIT;

END //

DELIMITER ;
