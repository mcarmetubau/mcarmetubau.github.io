DROP DATABASE IF EXISTS BIBLIOTECA;
CREATE DATABASE BIBLIOTECA CHARACTER SET utf8mb4;
USE BIBLIOTECA;

-- -------------------------------
-- TAULES
-- -------------------------------

CREATE TABLE GENERE (
    codi_genere INT AUTO_INCREMENT PRIMARY KEY,
    descripcio VARCHAR(50) NOT NULL
);

CREATE TABLE AUTOR (
    codi_autor INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    cognom VARCHAR(50) NOT NULL,
    sexe_h_d ENUM('home','dona') DEFAULT 'home'
);

CREATE TABLE LLIBRE (
    codi_llibre INT AUTO_INCREMENT PRIMARY KEY,
    titol VARCHAR(100) NOT NULL,
    codi_genere INT,
    isbn VARCHAR(20),
    any_publicacio YEAR,
    FOREIGN KEY (codi_genere) REFERENCES GENERE(codi_genere)
);

CREATE TABLE LLIBRE_AUTOR (
    codi_llibre INT,
    codi_autor INT,
    autor_principal BOOLEAN DEFAULT 0,
    PRIMARY KEY (codi_llibre, codi_autor),
    FOREIGN KEY (codi_llibre) REFERENCES LLIBRE(codi_llibre),
    FOREIGN KEY (codi_autor) REFERENCES AUTOR(codi_autor)
);

CREATE TABLE LECTOR (
    dni VARCHAR(9) PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    cognom VARCHAR(50) NOT NULL,
    adreca VARCHAR(100),
    ciutat VARCHAR(50),
    data_naixement DATE
);

CREATE TABLE PRESTEC (
    codi_prestec INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(9),
    codi_llibre INT,
    data_prestec DATE,
    data_retorn DATE,
    FOREIGN KEY (dni) REFERENCES LECTOR(dni),
    FOREIGN KEY (codi_llibre) REFERENCES LLIBRE(codi_llibre)
);

-- -------------------------------
-- INSERCIÓ DE DADES
-- -------------------------------

INSERT INTO GENERE (descripcio) VALUES
('Ficció'), ('Història'), ('Ciència'), ('Fantasía'), ('Misteri');

INSERT INTO AUTOR (nom, cognom, sexe_h_d) VALUES
('Joan', 'Serra', 'home'),
('Maria', 'Vila', 'dona'),
('Pau', 'Roca', 'home'),
('Laura', 'Casas', 'dona'),
('Marc', 'García', 'home');

INSERT INTO LLIBRE (titol, codi_genere, isbn, any_publicacio) VALUES
('El camí del vent', 1, '978-84-123456-1-0', 2019),
('Secrets del passat', 5, '978-84-123456-2-7', 2020),
('Històries antigues', 2, '978-84-123456-3-4', 2015),
('El laboratori del futur', 3, '978-84-123456-4-1', 2021),
('El drac de foc', 4, '978-84-123456-5-8', 2018),
('Ciutat perduda', 5, '978-84-123456-6-5', 2022);

INSERT INTO LLIBRE_AUTOR (codi_llibre, codi_autor, autor_principal) VALUES
(1, 1, TRUE), (1, 2, FALSE), (2, 2, TRUE), (3, 3, TRUE),
(4, 4, TRUE), (5, 5, TRUE), (6, 2, TRUE), (6, 1, FALSE);

INSERT INTO LECTOR (dni, nom, cognom, adreca, ciutat, data_naixement) VALUES
('11111111A', 'Arnau', 'López', 'Carrer Major 12', 'Barcelona', '2000-04-15'),
('22222222B', 'Clara', 'Ribas', 'Av. de la Pau 7', 'Girona', '1998-02-09'),
('33333333C', 'Oriol', 'Pérez', 'Carrer Nou 3', 'Tarragona', '1985-09-22'),
('44444444D', 'Anna', 'Soler', 'Carrer del Mar 45', 'Lleida', '1992-12-30');

INSERT INTO PRESTEC (dni, codi_llibre, data_prestec, data_retorn) VALUES
('11111111A', 1, '2024-01-10', '2024-01-20'),
('11111111A', 3, '2024-02-05', '2024-02-25'),
('22222222B', 2, '2024-03-15', '2024-03-30'),
('33333333C', 1, '2024-04-01', '2024-04-20'),
('33333333C', 5, '2024-05-10', '2024-05-25'),
('44444444D', 6, '2024-06-01', '2024-06-15');
