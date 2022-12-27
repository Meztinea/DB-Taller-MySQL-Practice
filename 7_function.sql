-- @Meztinea



-- Funciones

-- Función que cuenta la cantidad de folios con el mismo cliente
DELIMITER //

CREATE FUNCTION contar_folios(id_cliente INT)
RETURNS INT
DETERMINISTIC 
BEGIN
    SET @conteo = (SELECT COUNT(cliente_id) FROM folios WHERE cliente_id = id_cliente);
    RETURN @conteo;
END//

DELIMITER ;



-- Función que actualiza la fecha de cierre de un folio con la fecha actual 
DELIMITER //

CREATE FUNCTION cerrar_folio(folio_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC 
BEGIN
    UPDATE folios SET fecha_cierre = CURDATE() WHERE id_folio = folio_id;
    RETURN 'Folio Cerrado';
END//


DELIMITER ;
    
    
-- Función que cuenta los días que ha tardado una reparación
DELIMITER //

CREATE FUNCTION contar_dias(folio_id INT)
RETURNS INT
DETERMINISTIC 
BEGIN
    SET @apertura = (SELECT fecha_apertura FROM folios WHERE id_folio = folio_id);
    SET @cierre = (SELECT fecha_cierre FROM folios WHERE id_folio = folio_id);
    RETURN DATEDIFF(@cierre, @apertura);
END//


DELIMITER ;
