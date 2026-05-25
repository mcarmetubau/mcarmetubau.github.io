DROP DATABASE IF EXISTS empleats;
CREATE DATABASE empleats CHARACTER SET utf8mb4;
USE empleats;

CREATE TABLE departament (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  pressupost DOUBLE UNSIGNED NOT NULL,
  despeses DOUBLE UNSIGNED NOT NULL
);

CREATE TABLE empleat (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nom VARCHAR(100) NOT NULL,
  cognom1 VARCHAR(100) NOT NULL,
  cognom2 VARCHAR(100),
  id_departament INT UNSIGNED,
  FOREIGN KEY (id_departament) REFERENCES departament(id)
);

INSERT INTO departament VALUES(1, 'Desenvolupament', 120000, 6000);
INSERT INTO departament VALUES(2, 'Sistemes', 150000, 21000);
INSERT INTO departament VALUES(3, 'Recursos Humans', 280000, 25000);
INSERT INTO departament VALUES(4, 'Comptabilitat', 110000, 3000);
INSERT INTO departament VALUES(5, 'R+D', 375000, 380000);
INSERT INTO departament VALUES(6, 'Projectes', 0, 0);
INSERT INTO departament VALUES(7, 'Publicitat', 0, 1000);

INSERT INTO empleat VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleat VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleat VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleat VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleat VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleat VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleat VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleat VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleat VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleat VALUES(10, '46384486H', 'Diego', 'Flores', 'Salas', 5);
INSERT INTO empleat VALUES(11, '67389283A', 'Marta', 'Herrera', 'Gil', 1);
INSERT INTO empleat VALUES(12, '41234836R', 'Irene', 'Salas', 'Flores', NULL);
INSERT INTO empleat VALUES(13, '82635162B', 'Juan Antonio', 'Sáez', 'Guerrero', NULL);