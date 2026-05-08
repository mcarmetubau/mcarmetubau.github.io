CREATE DATABASE datavault;
USE datavault;

CREATE TABLE departaments (
    id_departament INT PRIMARY KEY,
    nom VARCHAR(50),
    ciutat VARCHAR(50)
);

CREATE TABLE empleats (
    id_empleat INT PRIMARY KEY,
    nom VARCHAR(50),
    salari DECIMAL(10,2),
    id_departament INT,
    FOREIGN KEY (id_departament)
    REFERENCES departaments(id_departament)
);

CREATE TABLE projectes (
    id_projecte INT PRIMARY KEY,
    nom VARCHAR(50),
    pressupost DECIMAL(10,2)
);

CREATE TABLE assignacions (
    id_empleat INT,
    id_projecte INT,
    hores INT,
    PRIMARY KEY(id_empleat, id_projecte),
    FOREIGN KEY (id_empleat)
    REFERENCES empleats(id_empleat),
    FOREIGN KEY (id_projecte)
    REFERENCES projectes(id_projecte)
);

INSERT INTO departaments VALUES
(1,'Ciberseguretat','Barcelona'),
(2,'IA','Madrid'),
(3,'Sistemes','Valencia'),
(4,'Cloud','Sevilla');

INSERT INTO empleats VALUES
(1,'Anna',3200,1),
(2,'Marc',2800,1),
(3,'Laura',4100,2),
(4,'Joan',3900,2),
(5,'Pau',2500,3),
(6,'Marta',2700,3),
(7,'Nil',3500,NULL);

INSERT INTO projectes VALUES
(1,'Firewall X',20000),
(2,'AI Vision',50000),
(3,'Cloud Sync',30000),
(4,'Backup Secure',15000);

INSERT INTO assignacions VALUES
(1,1,40),
(1,2,10),
(2,1,30),
(3,2,50),
(4,2,25),
(5,3,20),
(6,4,35);