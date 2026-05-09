---
title: Exercicis SQL amb futbol (teams i players)
date: 2026-05-09
categories: [administració de sistemes informàtics en xarxa, bases-de-dades]
tags: [mysql, exercicis,tasques, administració de sistemes informàtics en xarxa]
---

# ⚽ Exercicis SQL amb equips i jugadors

En aquest post treballem consultes SQL amb un exemple de futbol utilitzant dues taules:
- `teams`
- `players`

---

## 🗄️ Creació de la base de dades


DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol CHARACTER SET utf8mb4;
USE futbol;

CREATE TABLE teams (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE players (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DOUBLE NOT NULL,
    id_team INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_team) REFERENCES teams(id)
);

INSERT INTO teams VALUES (1, 'Nottingham Presa');
INSERT INTO teams VALUES (2, 'Inter de Mitente');
INSERT INTO teams VALUES (3, 'Vodka Juniors');
INSERT INTO teams VALUES (4, 'Sparta da Risa');
INSERT INTO teams VALUES (5, 'Water de Munic');
INSERT INTO teams VALUES (6, 'Esteaua de l''aixeta');

INSERT INTO players VALUES (1, 'Jugador A', 86000, 1);
INSERT INTO players VALUES (2, 'Jugador B', 120000, 2);
INSERT INTO players VALUES (3, 'Jugador C', 150000, 3);
INSERT INTO players VALUES (4, 'Jugador D', 185000, 4);
INSERT INTO players VALUES (5, 'Jugador E', 755000, 5);
INSERT INTO players VALUES (6, 'Jugador F', 202000, 6);
INSERT INTO players VALUES (7, 'Jugador G', 245000, 1);
INSERT INTO players VALUES (8, 'Jugador H', 559000, 2);
INSERT INTO players VALUES (9, 'Jugador I', 444000, 3);
INSERT INTO players VALUES (10, 'Jugador J', 59000, 4);
INSERT INTO players VALUES (11, 'Jugador K', 180000, 5);