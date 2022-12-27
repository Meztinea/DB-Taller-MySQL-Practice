-- @Meztinea

DROP DATABASE IF EXISTS notas;    
CREATE DATABASE IF NOT EXISTS notas; 

USE notas;

CREATE TABLE IF NOT EXISTS clientes(
    id_cliente INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellido_p VARCHAR(45) NOT NULL,
    apellido_m VARCHAR(45),
    telefono VARCHAR(10),
    CONSTRAINT unique_combinacion UNIQUE (nombre, apellido_p, apellido_m, telefono)
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS companias(
    id_compania INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    compania VARCHAR(45) NOT NULL UNIQUE
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS marcas(
    id_marca INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(45) NOT NULL UNIQUE
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS servicios(
    id_servicio INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    servicio VARCHAR(45) NOT NULL,
    precio INTEGER NOT NULL
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS modelos(
    id_modelo INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL UNIQUE,
    marca_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca) ON DELETE CASCADE
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS equipos(
    id_equipo INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    imei VARCHAR(15),
    falla VARCHAR(255) NOT NULL,
    observaciones_de_recepcion VARCHAR(255),
    observaciones_de_entrega VARCHAR(255) NOT NULL,
    compania_id INTEGER UNSIGNED NOT NULL,
    modelo_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (compania_id) REFERENCES companias(id_compania) ON DELETE CASCADE,
    FOREIGN KEY (modelo_id) REFERENCES modelos(id_modelo) ON DELETE CASCADE 
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS equipos_servicios(
    id_equipo_servicio INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    equipo_id INTEGER UNSIGNED NOT NULL,
    servicio_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id_equipo) ON DELETE CASCADE,
    FOREIGN KEY (servicio_id) REFERENCES servicios(id_servicio) ON DELETE CASCADE 
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS folios(
    id_folio INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    fecha_apertura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total INTEGER UNSIGNED NOT NULL,
    anticipo INTEGER UNSIGNED,
    resto_pendiente INTEGER UNSIGNED NOT NULL,
    fecha_cierre DATE,
    total_cobrado INTEGER UNSIGNED NOT NULL,
    cliente_id INTEGER UNSIGNED NOT NULL,
    equipo_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id_equipo) ON DELETE CASCADE
) ENGINE = InnoDB;
