---
title: "Tasca: Exercicis Procediments / Funcions mysql Base de dades"
date: 2026-05-25 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Tasca, Pràctica, Procediments, Function, mysql]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA

> 📸 Recorda fer captures.
{:.prompt-info}


Cal crear i carregar la base de dades biblioteca, que trobareu al següent enllaç [Base de dades MySql Biblioteca](/assets/biblioteca_sql/biblioteca.sql)


# Base de Dades Biblioteca — MySQL

## Estructura general

Base de dades relacional per gestionar llibres, autors, lectors i préstecs d’una biblioteca.

---

# Taules principals

## LLIBRE

Conté la informació de cada llibre.

| Camp             |        Tipus |         Descripció |
| ---------------- | -----------: | -----------------: |
| `codi_llibre`    |          INT | Identificador únic |
| `titol`          | VARCHAR(100) |   Títol del llibre |
| `codi_genere`    |          INT |  Gènere del llibre |
| `isbn`           |  VARCHAR(20) |          Codi ISBN |
| `any_publicacio` |         YEAR |  Any de publicació |

---

## GENERE

Classificació dels llibres.

| Camp          |       Tipus |
| ------------- | ----------: |
| `codi_genere` |         INT |
| `descripcio`  | VARCHAR(50) |

Exemples:

* Ficció
* Història
* Ciència
* Fantasia
* Misteri

---

## AUTOR

Informació dels autors.

| Camp         |               Tipus |
| ------------ | ------------------: |
| `codi_autor` |                 INT |
| `nom`        |         VARCHAR(50) |
| `cognom`     |         VARCHAR(50) |
| `sexe_h_d`   | ENUM('home','dona') |

---

## LLIBRE_AUTOR

Taula intermèdia entre llibre i autor.

Permet:

* un llibre amb diversos autors
* un autor amb diversos llibres

| Camp              |   Tipus |
| ----------------- | ------: |
| `codi_llibre`     |     INT |
| `codi_autor`      |     INT |
| `autor_principal` | BOOLEAN |

---

## LECTOR

Dades dels usuaris de la biblioteca.

| Camp             |        Tipus |
| ---------------- | -----------: |
| `dni`            |   VARCHAR(9) |
| `nom`            |  VARCHAR(50) |
| `cognom`         |  VARCHAR(50) |
| `adreca`         | VARCHAR(100) |
| `ciutat`         |  VARCHAR(50) |
| `data_naixement` |         DATE |

---

## PRESTEC

Registre dels préstecs de llibres.

| Camp           |      Tipus |
| -------------- | ---------: |
| `codi_prestec` |        INT |
| `dni`          | VARCHAR(9) |
| `codi_llibre`  |        INT |
| `data_prestec` |       DATE |
| `data_retorn`  |       DATE |

---

# Relacions entre taules

```text
GENERE 1 ───── N LLIBRE

LLIBRE N ───── N AUTOR
         via LLIBRE_AUTOR

LECTOR 1 ───── N PRESTEC

LLIBRE 1 ───── N PRESTEC
```

---

# Contingut de pràctiques

## Procediments emmagatzemats (Stored Procedures)

### Procediments bàsics

1. Canviar l’adreça d’un lector a partir del DNI.
2. Canviar l’adreça d’un lector a partir del nom.

---

### Consultes per llibres

3. Retornar llibres d’un gènere concret.
4. Retornar llibres segons gènere + autor principal.
5. Mostrar tots els llibres on aparegui un autor.

---

### Estadístiques

6. Llistat de llibres més prestats.
7. Nombre de llibres d’un gènere (paràmetre OUT).

---

### IF / CASE

8. Mostrar autors:

   * homes
   * dones
   * tots

implementat:

* amb `IF`
* amb `CASE`

---

### Cadenes i bucles

9. Generar els 10 primers nombres separats per comes.
10. Afegir caràcters segons longitud del títol.
11. Retornar una cadena escrita al revés.
12. Substituir els números d’una cadena per `*`.

---

# Funcions MySQL

## Matemàtiques

1. Divisió entre dividend i divisor.

---

## Cerca d’informació

2. Obtenir codi d’autor pel nom.
3. Diferència d’anys entre dues dates.
4. Nom complet d’un lector a partir del DNI.
5. Edat d’un lector.
6. Total de préstecs d’un lector.

---

## Llibres i gèneres

7. Gènere d’un llibre.
8. Nombre de llibres d’un autor principal.
9. Antiguitat d’un llibre.
10. Llibre més recent.
11. Llibre més antic d’un gènere.

---

## Estadístiques

12. Percentatge de llibres prestats.
13. Darrer llibre prestat per un lector.
14. Gènere més freqüent d’un autor.
15. Saber si un llibre està actualment prestat.
16. Nombre de lectors majors de 30 anys.
17. Cadena amb tots els autors (`GROUP_CONCAT()`).
18. Mitjana d’edat dels lectors.
19. Nombre de préstecs totals per gènere.
20. Nombre d’autors homes i dones concatenat.

---

## Relacions avançades

21. Autor principal d’un llibre.
22. Nombre de lectors diferents que han llegit llibres d’un autor.
23. Data del primer préstec registrat.

---
