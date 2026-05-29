---
title: "Manual creació de taules MYSQL - DDL"
date: 2026-05-19 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Manual DDL, mysql]
---

## 1. Crear una taula

Sintaxi bàsica:

```sql
CREATE TABLE nom_taula (
    columna1 TIPUS,
    columna2 TIPUS,
    ...
);
```

Exemple:

```sql
CREATE TABLE PACIENT (
    DNI VARCHAR(15),
    Nom VARCHAR(50),
    Cognoms VARCHAR(100)
);
```

---

# 2. Tipus de dades habituals

| Tipus          |    Descripció |               Exemple |
| -------------- | ------------: | --------------------: |
| `INT`          |         Enter |                    25 |
| `VARCHAR(n)`   | Text variable |         `VARCHAR(50)` |
| `CHAR(n)`      |      Text fix |             `CHAR(9)` |
| `DATE`         |          Data |          `2026-05-29` |
| `DATETIME`     |   Data i hora | `2026-05-29 10:30:00` |
| `DECIMAL(p,s)` |       Decimal |        `DECIMAL(8,2)` |
| `BOOLEAN`      |     Cert/Fals |       `TRUE`, `FALSE` |
| `YEAR`         |           Any |                `2026` |

---

# 3. Restriccions de columna

## PRIMARY KEY

Identifica cada fila de forma única.

```sql
DNI VARCHAR(15) PRIMARY KEY
```

Només n’hi pot haver una per taula.

---

## NOT NULL

Obliga a informar valor.

```sql
Nom VARCHAR(50) NOT NULL
```

No permet:

```sql
NULL
```

---

## UNIQUE

No permet valors repetits.

```sql
Email VARCHAR(100) UNIQUE
```

---

## DEFAULT

Assigna un valor per defecte.

```sql
Estat VARCHAR(20) DEFAULT 'pendent'
```

---

## AUTO_INCREMENT

Increment automàtic (normalment en IDs).

```sql
ID INT AUTO_INCREMENT PRIMARY KEY
```

---

# 4. Clau primària composta

Quan la clau està formada per més d’una columna.

```sql
PRIMARY KEY (DNI, Data)
```

Exemple:

```sql
CREATE TABLE TRACTA (
    DNI VARCHAR(15),
    NumCollegiat VARCHAR(20),
    Data DATE,
    PRIMARY KEY (DNI, NumCollegiat, Data)
);
```

---

# 5. Claus foranes (FOREIGN KEY)

Relacionen taules entre elles.

Sintaxi:

```sql
FOREIGN KEY (columna)
REFERENCES altra_taula(columna)
```

Exemple:

```sql
FOREIGN KEY (DNI)
REFERENCES PACIENT(DNI)
```

---

# 6. ON DELETE i ON UPDATE

Defineixen què passa quan es modifica o s’elimina el registre pare.

## CASCADE

Si s’elimina el pare → elimina fills.

```sql
ON DELETE CASCADE
```

Si s’actualitza → actualitza fills.

```sql
ON UPDATE CASCADE
```

---

## RESTRICT

No permet eliminar o modificar si hi ha relacions.

```sql
ON DELETE RESTRICT
ON UPDATE RESTRICT
```

---

## SET NULL

Si s’elimina el pare → deixa la FK a `NULL`.

```sql
ON DELETE SET NULL
```

---

## NO ACTION

Equivalent pràctic a `RESTRICT` a MySQL.

---

Exemple complet:

```sql
FOREIGN KEY (DNI)
REFERENCES PACIENT(DNI)
ON DELETE CASCADE
ON UPDATE CASCADE
```

---

# 7. CHECK

Serveix per validar dades abans d’inserir.

Sintaxi:

```sql
CHECK (condició)
```

## Exemples

### Quantitat positiva

```sql
Quantitat INT CHECK (Quantitat > 0)
```

---

### Preu positiu

```sql
Preu DECIMAL(10,2) CHECK (Preu >= 0)
```

---

### Edat mínima

```sql
Edat INT CHECK (Edat >= 18)
```

---

### Any vàlid

```sql
AnyLlicenciatura INT CHECK (AnyLlicenciatura >= 1950)
```

---

# 8. Què és una `CONSTRAINT`?


Una **constraint** (restricció) és una regla que s’aplica a una columna o a una taula per controlar quines dades s’hi poden guardar.

Serveix per:

* garantir integritat de dades
* evitar errors
* relacionar taules
* validar valors

Sintaxi general:

```sql
CONSTRAINT nom_restriccio tipus_restriccio
```

---


# CONSTRAINT en MySQL — Explicació ràpida

## Què és `CONSTRAINT`?

`CONSTRAINT` s’utilitza per **donar nom a una restricció** dins d’una taula.

Una restricció pot ser:

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* CHECK
* NOT NULL (en alguns casos)
* DEFAULT

---

# Per què és important posar nom?

## ✔ 1. Identificar errors

Quan hi ha un error:

```
ERROR: constraint fk_prescriu_pacient violated
```

És més fàcil saber què ha fallat.

---

## ✔ 2. Eliminar restriccions després

```sql id="t2k9ab"
ALTER TABLE PRESCRIU
DROP CONSTRAINT fk_prescriu_pacient;
```

---

## ✔ 3. Modificar restriccions

```sql id="p9x7lm"
ALTER TABLE PRESCRIU
ADD CONSTRAINT fk_prescriu_pacient
FOREIGN KEY (DNI)
REFERENCES PACIENT(DNI);
```

---

# Sintaxi general

```sql
CREATE TABLE Exemple (
    columna tipus,

    CONSTRAINT nom_restriccio
        restriccio
);
```

---


## Exemple per primary

```sql
CREATE TABLE PACIENT (
    DNI VARCHAR(15),

    CONSTRAINT pk_pacient
        PRIMARY KEY (DNI)
);
```


## Exemple per foreign key

```sql
CREATE TABLE PRESCRIU (
    DNI VARCHAR(15),

    CONSTRAINT fk_prescriu_pacient
        FOREIGN KEY (DNI)
        REFERENCES PACIENT(DNI)
);
```


## Exemple per check

```sql
CONSTRAINT ck_quantitat
CHECK (Quantitat > 0)
```

---

# Recomanació per posar noms

Es fa servir sovint aquesta convenció:

| Tipus       | Prefix |
| ----------- | -----: |
| Primary Key |  `pk_` |
| Foreign Key |  `fk_` |
| Unique      |  `uq_` |
| Check       |  `ck_` |
| Not Null    |  `nn_` |

---



# 8. Exemple complet


## PACIENT

```sql
CREATE TABLE PACIENT (
    DNI VARCHAR(15),
    Nom VARCHAR(50) NOT NULL,
    Cognoms VARCHAR(100) NOT NULL,

    CONSTRAINT pk_pacient
        PRIMARY KEY (DNI)
);
```

---

## METGE

```sql
CREATE TABLE METGE (
    NumCollegiat VARCHAR(20),
    Nom VARCHAR(50) NOT NULL,
    Cognoms VARCHAR(100) NOT NULL,

    CONSTRAINT pk_metge
        PRIMARY KEY (NumCollegiat)
);
```

---

## MEDICAMENT

```sql
CREATE TABLE MEDICAMENT (
    NomComercial VARCHAR(100),
    Formula VARCHAR(255) NOT NULL,

    CONSTRAINT pk_medicament
        PRIMARY KEY (NomComercial)
);
```

---

# PRESCRIU

```sql
CREATE TABLE PRESCRIU (

    DNI VARCHAR(15)
        CONSTRAINT nn_prescriu_dni NOT NULL,

    NomComercial VARCHAR(100)
        CONSTRAINT nn_prescriu_medicament NOT NULL,

    NumCollegiat VARCHAR(20)
        CONSTRAINT nn_prescriu_metge NOT NULL,

    Data DATE
        CONSTRAINT nn_prescriu_data NOT NULL,

    Quantitat INT
        CONSTRAINT nn_prescriu_quantitat NOT NULL,

    CONSTRAINT ck_quantitat_positiva
        CHECK (Quantitat > 0),

    CONSTRAINT pk_prescriu
        PRIMARY KEY (
            DNI,
            NomComercial,
            NumCollegiat,
            Data
        ),

    CONSTRAINT fk_prescriu_pacient
        FOREIGN KEY (DNI)
        REFERENCES PACIENT(DNI)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_prescriu_medicament
        FOREIGN KEY (NomComercial)
        REFERENCES MEDICAMENT(NomComercial)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_prescriu_metge
        FOREIGN KEY (NumCollegiat)
        REFERENCES METGE(NumCollegiat)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
```

---

# Inserció d’exemple

```sql
INSERT INTO PACIENT
VALUES (
    '12345678A',
    'Joan',
    'Garcia'
);
```

```sql
INSERT INTO METGE
VALUES (
    'COL001',
    'Marta',
    'Soler'
);
```

```sql
INSERT INTO MEDICAMENT
VALUES (
    'Ibuprofeno 600',
    'Ibuprofè 600 mg'
);
```

```sql
INSERT INTO PRESCRIU
VALUES (
    '12345678A',
    'Ibuprofeno 600',
    'COL001',
    '2026-05-29',
    2
);
```

