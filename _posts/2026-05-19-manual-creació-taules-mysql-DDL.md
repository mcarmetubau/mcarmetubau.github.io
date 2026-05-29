---
title: "Manual creació de taules MYSQL - DDL"
date: 2026-05-19 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Manual DML, mysql]
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

# 8. Exemple complet

```sql
CREATE TABLE PRESCRIU (
    DNI VARCHAR(15),
    NomComercial VARCHAR(100),
    NumCollegiat VARCHAR(20),
    Data DATE,
    Quantitat INT CHECK (Quantitat > 0),

    PRIMARY KEY (DNI, NomComercial, NumCollegiat, Data),

    FOREIGN KEY (DNI)
        REFERENCES PACIENT(DNI)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (NomComercial)
        REFERENCES MEDICAMENT(NomComercial)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
```

---
