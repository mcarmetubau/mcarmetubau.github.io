DROP DATABASE IF EXISTS botiga;
CREATE DATABASE botiga CHARACTER SET utf8mb4;
USE botiga;

CREATE TABLE fabricant (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE producte (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    preu DOUBLE NOT NULL,
    id_fabricant INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_fabricant) REFERENCES fabricant(id)
);

INSERT INTO fabricant VALUES(1, 'Asus');
INSERT INTO fabricant VALUES(2, 'Lenovo');
INSERT INTO fabricant VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricant VALUES(4, 'Samsung');
INSERT INTO fabricant VALUES(5, 'Seagate');
INSERT INTO fabricant VALUES(6, 'Crucial');
INSERT INTO fabricant VALUES(7, 'Gigabyte');
INSERT INTO fabricant VALUES(8, 'Huawei');
INSERT INTO fabricant VALUES(9, 'Xiaomi');

INSERT INTO producte VALUES(1, 'Disc dur SATA3 1TB', 86.99, 5);
INSERT INTO producte VALUES(2, 'Memòria RAM DDR4 8GB', 120, 6);
INSERT INTO producte VALUES(3, 'Disc SSD 1 TB', 150.99, 4);
INSERT INTO producte VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producte VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producte VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producte VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producte VALUES(8, 'Portàtil Yoga 520', 559, 2);
INSERT INTO producte VALUES(9, 'Portàtil Ideapad 320', 444, 2);
INSERT INTO producte VALUES(10, 'Impressora HP Deskjet 3720', 59.99, 3);
INSERT INTO producte VALUES(11, 'Impressora HP Laserjet Pro M26nw', 180, 3);