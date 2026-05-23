---
title: "Apunts de Bases de Dades - Llenguatge DML"
date: 2026-05-15 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [ASIX, BBDD, SQL, DML, INSERT, UPDATE, DELETE, Transaccions]
---

# Apunts de Bases de Dades per a ASIX

* TOC
{:toc}

# 1. Tractament de les dades

## 1.1 El llenguatge DML d'SQL

El **DML** (*Data Manipulation Language*) és la part d'SQL encarregada de la manipulació de dades dins d’una base de dades.

Les sentències principals són:

- `SELECT` → consultar dades
- `INSERT` → inserir registres
- `UPDATE` → modificar registres existents
- `DELETE` → eliminar registres

En aquesta unitat treballarem especialment amb:

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

Permet inserir dades provinents d’una consulta.

### Sintaxi

```sql
INSERT INTO taula_desti (camp1, camp2)
SELECT camp1, camp2
FROM taula_origen
WHERE condicio;
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
WHERE condicio;
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

Sense `WHERE` s’actualitzen **totes** les files.

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
WHERE condicio;
```

## Exemple

```sql
DELETE FROM alumnes
WHERE id = 4;
```

---

## Eliminar totes les files

```sql
DELETE FROM alumnes;
```

---

## TRUNCATE TABLE

```sql
TRUNCATE TABLE alumnes;
```

---

## Diferències entre DELETE i TRUNCATE

| DELETE | TRUNCATE |
|---|---:|
| Elimina fila a fila | Elimina tota la taula |
| Permet `WHERE` | No permet `WHERE` |
| Més lent | Més ràpid |

---

# 5. Integritat referencial

Quan existeixen relacions entre taules mitjançant claus externes, cal definir què passa quan s’elimina o modifica una fila relacionada.

## Opcions disponibles

### `RESTRICT`

Impedeix eliminar o modificar si hi ha referències.

### `CASCADE`

Propaga automàticament el canvi o eliminació.

### `SET NULL`

Assigna `NULL` als camps relacionats.

### `NO ACTION`

Equivalent a `RESTRICT` en MySQL.

### `SET DEFAULT`

Assigna el valor per defecte.

---

# 6. Transaccions

Una **transacció** és un conjunt d’operacions que s’executen com una sola unitat.

Es compleix:

- o s’executen totes correctament
- o no se n’executa cap

Les transaccions garanteixen:

- consistència
- integritat
- seguretat davant errors
- control de concurrència

---

## Exemple típic

Transferència entre comptes bancaris:

```sql
UPDATE comptes
SET saldo = saldo - 100
WHERE id = 1;

UPDATE comptes
SET saldo = saldo + 100
WHERE id = 2;
```

Les dues instruccions han d’executar-se conjuntament.

---

## START TRANSACTION

Inicia la transacció.

```sql
START TRANSACTION;
```

---

## COMMIT

Confirma definitivament els canvis.

```sql
COMMIT;
```

Exemple:

```sql
START TRANSACTION;

UPDATE comptes
SET saldo = saldo - 500
WHERE id = 1;

UPDATE comptes
SET saldo = saldo + 500
WHERE id = 2;

COMMIT;
```

---

## ROLLBACK

Desfà els canvis no confirmats.

```sql
ROLLBACK;
```

Exemple:

```sql
START TRANSACTION;

UPDATE comptes
SET saldo = saldo - 500
WHERE id = 1;

ROLLBACK;
```

---

## SAVEPOINT

Permet crear punts intermedis dins una transacció.

```sql
SAVEPOINT punt1;
```

Tornar a un punt concret:

```sql
ROLLBACK TO punt1;
```

### Exemple

```sql
START TRANSACTION;

INSERT INTO clients VALUES (1, 'Anna');

SAVEPOINT punt1;

INSERT INTO clients VALUES (2, 'Marc');

ROLLBACK TO punt1;

COMMIT;
```

Resultat final:

```text
Anna
```

---

# Nivells d’aïllament

Controlen la interacció entre transaccions simultànies.

---

## READ UNCOMMITTED

Permet lectures brutes (*dirty reads*).

---

## READ COMMITTED

Només es llegeixen dades confirmades.

---

## REPEATABLE READ

Manté la mateixa lectura durant tota la transacció.

És el valor per defecte a **InnoDB**.

---

## SERIALIZABLE

Nivell més estricte.

Les transaccions s’executen com si fossin seqüencials.

---

## Configuració

### READ COMMITTED

```sql
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
```

### REPEATABLE READ

```sql
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
```

### SERIALIZABLE

```sql
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
```

---

# Polítiques de bloqueig

Quan una transacció accedeix a dades pot bloquejar-les temporalment.

Això evita inconsistències.

Tipus de bloqueig:

- base de dades
- taula
- fila
- columna

---

## InnoDB

El motor **InnoDB** treballa habitualment amb bloqueig a nivell de **fila**.

Això permet:

- millor concurrència
- millor rendiment
- menys bloquejos globals

---

# Exemple de concurrència

## Terminal A

```sql
START TRANSACTION;

SELECT *
FROM comptes
WHERE id = 1;
```

## Terminal B

```sql
UPDATE comptes
SET saldo = saldo + 100
WHERE id = 1;
```

Segons el nivell d’aïllament:

- pot quedar bloquejat
- pot esperar
- pot llegir dades anteriors
- o pot veure els canvis immediatament

---

# Resum final

## Manipulació de dades

- `INSERT` → inserir
- `UPDATE` → modificar
- `DELETE` → eliminar

## Integritat referencial

- `RESTRICT`
- `CASCADE`
- `SET NULL`
- `NO ACTION`

## Transaccions

- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT`

## Nivells d’aïllament

- `READ UNCOMMITTED`
- `READ COMMITTED`
- `REPEATABLE READ`
- `SERIALIZABLE`

## Bloqueig

- Base de dades
- Taula
- Fila
- Columna

---

# Idees clau

- El DML serveix per manipular dades.
- `INSERT` afegeix registres.
- `UPDATE` modifica registres existents.
- `DELETE` elimina registres.
- La integritat referencial controla dependències entre taules.
- Les transaccions garanteixen consistència.
- `COMMIT` confirma canvis.
- `ROLLBACK` els desfà.
- `SAVEPOINT` crea punts intermedis.
- Els nivells d’aïllament controlen la concurrència.
- InnoDB utilitza habitualment bloqueig per fila.