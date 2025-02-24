\c template1
DROP DATABASE IF EXISTS casino_db;
CREATE DATABASE casino_db;
\c casino_db

-- Tabla de usuarios

CREATE SEQUENCE users_seq
  START WITH 1
  INCREMENT BY 1;



CREATE TABLE users (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    passid VARCHAR(255) NOT NULL,
    balance INT NUMERIC (8,2),  
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de apuestas
CREATE TABLE apuestas (
    betting_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    game VARCHAR(50) NOT NULL,
    quantity NUMERIC (8,2)NOT NULL,
    result VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);