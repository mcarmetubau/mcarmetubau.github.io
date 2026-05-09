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
(4,'Cloud','Sevilla'),
(5,'DevOps','Bilbao'),
(6,'Dades','Malaga');

INSERT INTO empleats VALUES
(1,'Anna',3200,1),
(2,'Marc',2800,1),
(3,'Laura',4100,2),
(4,'Joan',3900,2),
(5,'Pau',2500,3),
(6,'Marta',2700,3),
(7,'Nil',3500,NULL),
(8,'Carla',4600,4),
(9,'Roger',3100,4),
(10,'Eva',2900,5),
(11,'Pol',3300,5),
(12,'Irene',4200,6),
(13,'David',2400,6),
(14,'Sergi',5100,1),
(15,'Aina',3600,2),
(16,'Xavi',2950,3),
(17,'Julia',4400,4),
(18,'Oriol',3700,5),
(19,'Claudia',2600,6),
(20,'Eric',4800,1);

INSERT INTO projectes VALUES
(1,'Firewall X',20000),
(2,'AI Vision',50000),
(3,'Cloud Sync',30000),
(4,'Backup Secure',15000),
(5,'Zero Trust',80000),
(6,'Data Lake',45000),
(7,'Quantum AI',120000),
(8,'Secure Mail',25000),
(9,'Docker Grid',40000),
(10,'Neural Shield',95000);

INSERT INTO assignacions VALUES
(1,1,40),
(1,2,10),
(2,1,30),
(2,5,45),
(3,2,50),
(3,5,20),
(4,2,25),
(4,6,30),
(5,3,20),
(6,4,35),
(6,6,50),
(8,7,60),
(8,10,20),
(9,3,25),
(9,9,40),
(10,9,30),
(11,8,20),
(11,9,15),
(12,6,45),
(12,7,25),
(13,8,10),
(14,5,60),
(14,10,50),
(15,2,35),
(15,7,45),
(16,3,15),
(17,10,40),
(18,9,50),
(19,4,20),
(20,5,70),
(20,7,30);