---
title: "Enunciat modelatge de base de dades - Societat Teatral"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Societat teatral

## Enunciat

Una societat teatral us demana realitzar el disseny Entitat-Relació d’una base de dades relacionada amb el món del teatre.

A partir de la informació descrita a continuació, haureu d’analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

Hi ha diversos teatres que s’identifiquen per un nom, que és únic dins de la seva ciutat, però que es pot repetir en ciutats diferents. De cada teatre es vol enregistrar l’adreça, el telèfon i l’aforament.

De les ciutats es vol guardar el seu nom i el nombre d’habitants.

De les persones relacionades amb els teatres es vol guardar el codi de persona, el nom i els cognoms.

Dins d’aquestes persones es distingeixen dos perfils diferents.

D’una banda hi ha els **tramoistes**, dels quals es vol enregistrar la seva especialitat. Cada tramoista només pot treballar en un teatre, tot i que en un mateix teatre poden treballar diversos tramoistes.

D’altra banda hi ha els **actors**, dels quals es vol guardar l’any de debut al teatre. També es vol enregistrar quins actors són substituts d’altres actors en un moment determinat.

Els actors són contractats en una data determinada per una única companyia, però poden canviar de companyia al llarg del temps i fins i tot tornar a treballar per a una companyia en la qual ja havien treballat anteriorment. Es vol conservar, per tant, l’històric de contractacions.

De les companyies teatrals es vol guardar el nom, que serà únic, l’any de creació i la ciutat on tenen la seva seu.

També es vol saber en quins teatres ha actuat cada actor i en quines dates. Un actor, en una data determinada, actua en un únic teatre, però un mateix actor pot actuar en diverses dates i un teatre pot acollir actuacions d’un mateix actor en diferents moments.

A més, es vol tenir constància de quines obres s’han representat a cada teatre i en quines dates.

En una data determinada, en un teatre només es representa una única obra, però aquesta mateixa obra es pot representar en diferents dates i també en diferents teatres, fins i tot coincidint en la mateixa data.

També es vol enregistrar el nombre d’espectadors que hi ha hagut en cada sessió representada de cada obra a cada teatre.

En una mateixa data hi pot haver diverses sessions. Les sessions s’identifiquen parcialment pel seu nom (per exemple: **matí**, **tarda**, **vespre**), de manera que en una mateixa data pot existir una sessió de matí, una de tarda, una de vespre, etc.

---

# Tasca a realitzar

A partir de la informació descrita:

* analitzeu els requisits del sistema;
* identifiqueu quina informació cal emmagatzemar;
* proposeu el **model Entitat-Relació** corresponent;
* indiqueu atributs, claus, relacions i cardinalitats;
* i transformeu posteriorment el model conceptual al model relacional.

---

# Consideracions importants

> **Aquest exercici no té una única solució correcta.**

L’objectiu de la pràctica és interpretar l’enunciat i prendre decisions de modelatge justificades a partir de la informació proporcionada.

Per tant:

* poden existir diferents propostes vàlides;
* diferents grups poden arribar a models diferents;
* i diverses solucions poden ser correctes si representen adequadament el problema plantejat.

Ara bé, sí que hi pot haver **solucions errònies**, especialment si el model no permet representar tota la informació descrita o si introdueix incoherències.

Per aquest motiu, es valorarà especialment la capacitat de **justificar les decisions i interpretacions adoptades durant el procés de modelatge**.
