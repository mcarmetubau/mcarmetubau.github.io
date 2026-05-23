---
title: "Apunts de Bases de Dades - Llenguatge DML"
date: 2026-05-15 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Apunts,DML]
---

## Apunts de Bases de Dades per a ASIX


# Índex

1. Tractament de les dades
   - El llenguatge DML d'SQL
2. La sentència `INSERT`
   - Sintaxi
   - `INSERT` amb `SELECT`
3. La sentència `UPDATE`
4. La sentència `DELETE`
5. Esborrat i modificació de dades amb integritat referencial
6. Transaccions
   - `COMMIT`
   - `ROLLBACK`
   - `SAVEPOINT`
   - Nivells d’aïllament
   - Polítiques de bloqueig

---

# 1. Tractament de les dades

## 1.1 El llenguatge DML d'SQL

El **DML** (*Data Manipulation Language*) és la part d'SQL dedicada a la manipulació de dades.

Les sentències principals són:

- `SELECT`: consulta informació de la base de dades.
- `INSERT`: insereix registres.
- `UPDATE`: actualitza registres existents.
- `DELETE`: elimina registres.

En aquesta unitat ens centrarem en:

- `INSERT`
- `UPDATE`
- `DELETE`

---

# 2. La sentència INSERT

## 2.1 Sintaxi de INSERT

```sql
INSERT INTO taula [(columna1, columna2, ...)]
VALUES (valor1, valor2, ...);
```

## Exemple

```sql
INSERT INTO alumnes (id, nom, edat)
VALUES (1, 'Anna', 20);
```

---

## Inserir diverses files

```sql
INSERT INTO alumnes (id, nom, edat)
VALUES
(2, 'Marc', 19),
(3, 'Laura', 21),
(4, 'Joan', 20);
```

---

## 2.2 INSERT amb SELECT

També es pot inserir el resultat d’una consulta.

### Sintaxi

```sql
INSERT INTO taula_destí (camp1, camp2)
SELECT camp1, camp2
FROM taula_origen
WHERE condició;
```

### Exemple

```sql
INSERT INTO clients_backup
SELECT *
FROM clients;
```

---

# 3. La sentència UPDATE

Serveix per modificar dades existents.

## Sintaxi

```sql
UPDATE taula
SET columna = valor
WHERE condició;
```

## Exemple

```sql
UPDATE alumnes
SET edat = 22
WHERE id = 3;
```

---

## Actualitzar diverses columnes

```sql
UPDATE alumnes
SET nom = 'Maria',
    edat = 23
WHERE id = 5;
```

---

## Important: WHERE

Sense `WHERE` s’actualitzen **tots** els registres:

```sql
UPDATE alumnes
SET edat = 18;
```

---

# 4. La sentència DELETE

Permet eliminar registres.

## Sintaxi

```sql
DELETE FROM taula
WHERE condició;
```

## Exemple

```sql
DELETE FROM alumnes
WHERE id = 4;
```

---

## Eliminar tots els registres

```sql
DELETE FROM alumnes;
```

---

## TRUNCATE TABLE

També podem utilitzar:

```sql
TRUNCATE TABLE alumnes;
```

## Diferències entre DELETE i TRUNCATE

| DELETE | TRUNCATE |
|---|---:|
| Elimina fila a fila | Buida tota la taula |
| Pot portar `WHERE` | No admet `WHERE` |
| Més lent | Més ràpid |

---

# 5. Integritat referencial

Quan una taula depèn d’una altra mitjançant claus externes podem definir què passa quan s’actualitzen o s’eliminen dades relacionades.

## Opcions disponibles

### `RESTRICT`

Impedeix eliminar o modificar si existeixen referències.

### `CASCADE`

Propaga canvis o eliminacions.

### `SET NULL`

Assigna `NULL` als registres relacionats.

### `NO ACTION`

Equivalent a `RESTRICT` en MySQL.

### `SET DEFAULT`

No disponible amb InnoDB.