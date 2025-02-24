\c template1
DROP DATABASE IF EXISTS casino_db;
CREATE DATABASE casino_db;
\c casino_db

-- Tabla de usuarios

CREATE SEQUENCE users_seq
  START WITH 1
  INCREMENT BY 1;
CREATE TABLE users (
    id INT  PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    pass VARCHAR(255) NOT NULL,
    saldo INT DEFAULT 1000,  
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de apuestas
CREATE TABLE apuestas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    juego VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    resultado VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);