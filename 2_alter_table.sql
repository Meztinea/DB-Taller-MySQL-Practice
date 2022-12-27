-- @Meztinea

ALTER TABLE modelos ADD FOREIGN KEY (marca_id) REFERENCES marcas(id_marca) ON DELETE CASCADE;

ALTER TABLE equipos ADD FOREIGN KEY (compania_id) REFERENCES companias(id_compania) ON DELETE CASCADE;

ALTER TABLE equipos ADD FOREIGN KEY (modelo_id) REFERENCES modelos(id_modelo) ON DELETE CASCADE;

ALTER TABLE equipos_servicios ADD FOREIGN KEY (equipo_id) REFERENCES equipos(id_equipo) ON DELETE CASCADE;

ALTER TABLE equipos_servicios ADD FOREIGN KEY (servicio_id) REFERENCES servicios(id_servicio) ON DELETE CASCADE;

ALTER TABLE folios ADD FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente) ON DELETE CASCADE;

ALTER TABLE folios ADD FOREIGN KEY (equipo_id) REFERENCES equipos(id_equipo) ON DELETE CASCADE;