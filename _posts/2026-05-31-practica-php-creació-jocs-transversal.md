---
title: "Tasca: Creació de coneixaments Mysql - PHP - Javascript"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Desenvolupament web]
tags: [Administració de Sistemes Informàtics en Xarxa, Desenvolupament WEB, ASIX, FP, PHP, JavaScrtip, Mysql, BBDD, DDL, tasca,practica]
---

## Informació sobre la tasca

Realitza un dels exercicis de  creació de base de dades, i les preguntes de comprensió

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA

> 📸 Recorda fer captures.
{:.prompt-info}


# Proposta de Jocs Educatius amb Base de Dades i Gamificació

## Introducció

Aquest document presenta diverses propostes de jocs educatius basats en preguntes i respostes, pensats per ser implementats mitjançant tecnologies web i bases de dades relacionals. Les activitats permeten treballar consultes SQL, formularis, validació de dades, gestió d'estat i tècniques de gamificació.

La proposta principal és el **Joc Geogràfic Clàssic**, ampliat amb un sistema de puntuació, pistes i nivells. A continuació es descriuen altres variants que poden adaptar-se a diferents àrees de coneixement.

---

# T0. Creació de l’estructura de la base de dades (Tasca inicial obligatòria)

## Descripció

Abans de desenvolupar qualsevol dels jocs, és imprescindible dissenyar i crear l’estructura de la base de dades que suportarà totes les funcionalitats del sistema.

Aquesta fase defineix les entitats, relacions i camps necessaris per emmagatzemar la informació utilitzada en els diferents modes de joc.

## Objectius

* Dissenyar un model de dades relacional coherent.
* Crear taules per a cada modalitat de joc.
* Assegurar la reutilització de l’estructura.
* Preparar la base per a consultes SQL dinàmiques.

## Proposta d’estructura general

### Taula: localitats (per exemple)

| Camp               | Tipus    |
| ------------------ | -------- |
| id                 | INT (PK) |
| nom                | VARCHAR  |
| provincia          | VARCHAR  |
| comunitat_autonoma | VARCHAR  |
| comarca            | VARCHAR  |


## Resultat esperat

Al final d’aquesta tasca, el sistema ha de disposar d’una base de dades completa que permeti alimentar un dels jocs següents sense modificacions estructurals importants.

---

# 1. Joc Geogràfic Clàssic: Localitat → Província

## Descripció

El sistema selecciona una localitat aleatòria de la base de dades i la mostra a l’usuari. Aquest ha d’indicar la província corresponent.

## Exemple

> En quina província es troba Vic?

Resposta: Barcelona

## Comparació

```text id="g7k2pm"
Província correcta: Barcelona  
Resposta usuari: Barcelona  
Resultat: Correcte
```

## Variables d’estat

```html id="k2m9aa"
<input type="hidden" name="provincia_correcta">
<input type="hidden" name="encerts">
<input type="hidden" name="errors">
<input type="hidden" name="percentatge">
```

---

# Extensió: Sistema d’Increment de Punts

## Sistema de puntuació

| Situació              | Punts    |
| --------------------- | -------- |
| Correcta a la primera | +10      |
| Correcta amb pista    | +5       |
| Error                 | -3       |
| Ratxa de 3 encerts    | +5 extra |

---

## Sistema de pistes

* Comarca
* Codi postal
* Zona geogràfica
* Coordenades aproximades

---

## Estadístiques

* Encerts
* Errors
* Percentatge
* Puntuació total
* Ratxa actual
* Millor ratxa
* Pistes utilitzades

---

## Nivells

| Puntuació | Nivell           |
| --------- | ---------------- |
| 0–30      | Aprenent         |
| 31–60     | Explorador       |
| 61–90     | Expert Geogràfic |
| +90       | Mestre Geògraf   |

---
#Llistat de propostes:

# 2. País → Capital

## Descripció

Es mostra un país i l’usuari ha d’escriure la capital.

## Exemple

* França → París
* Portugal → Lisboa
* Japó → Tòquio

---

# 3. Capital → País

## Descripció

Versió inversa del joc anterior.

## Exemple

* Roma → Itàlia
* Berlín → Alemanya
* Buenos Aires → Argentina

---

# 4. Comunitat Autònoma → Capital

## Exemple

* Galícia → Santiago de Compostela
* Aragó → Saragossa

---

# 5. Província → Comunitat Autònoma

## Exemple

* Lleida → Catalunya
* Sevilla → Andalusia

---

# 6. Monument → Ciutat

## Exemple

* Sagrada Família → Barcelona
* Torre Eiffel → París
* Coliseu → Roma

---

# 7. Banderes → País

## Exemple

* 🇮🇹 → Itàlia
* 🇲🇽 → Mèxic
* 🇯🇵 → Japó

---

# 8. Gastronomia: Plat → Origen

## Exemple

* Pizza → Itàlia
* Paella → Espanya
* Sushi → Japó

---

# 9. Informàtica i Tecnologia

## 9.1 Llenguatge → Creador

* Python → Guido van Rossum
* Java → James Gosling

## 9.2 Comanda Linux → Funció

* pwd → directori actual
* ls → llistar fitxers

---

# 10. Pel·lícules i Cultura General

## Exemple

### Pel·lícula → Director

* Titanic → James Cameron

### Actor → Pel·lícula

* Tom Hanks → Forrest Gump

### Pel·lícula → Any

* Gladiator → 2000

---

# Versions del joc

## A. Desplegable

Selecció amb `<select>`.

## B. Multiopció

4 respostes possibles.

## C. Contrarellotge

30 segons per respondre.

## D. Ratxes

Bonus per encerts consecutius.

## E. Dificultat progressiva

* Fàcil: capitals
* Mitjà: municipis
* Difícil: comarques
* Expert: coordenades i dades avançades

---

# Proposta d’Excel·lència (Nota Alta)

## Joc multinivell complet

Inclou:

* Base de dades relacional
* Consultes SQL múltiples
* Sistema de puntuació
* Pistes interactives
* Ratxes i nivells
* Estadístiques avançades
* Rànquing final
