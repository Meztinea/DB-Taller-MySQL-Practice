-- @Meztinea

-- Triggers 
-- Actualizar la fecha de cierre de un folio cuando se actualizan las observaciones de entrega

DELIMITER //

CREATE TRIGGER after_update_obs_entrega_equipos
AFTER UPDATE ON equipos
FOR EACH ROW
BEGIN
    IF(NEW.observaciones_de_entrega != OLD.observaciones_de_entrega) THEN

        UPDATE folios SET fecha_cierre = CURRENT_DATE() WHERE equipo_id = OLD.id_equipo;

    END IF;
END;
//

DELIMITER ;

-- Sentencia que activa el disparador (TRIGGER)
UPDATE equipos SET observaciones_de_entrega = 'Garantía 15 días' WHERE id_equipo = 1;
