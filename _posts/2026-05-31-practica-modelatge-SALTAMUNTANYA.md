---
title: "Enunciat modelatge de base de dades - SALTAMUNTANYA"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---


# Pràctica: Modelatge de base de dades — Associació excursionista **SALTAMUNTANYA**

## Enunciat

L’associació excursionista **SALTAMUNTANYA** us sol·licita dissenyar una base de dades que permeti gestionar la informació relacionada amb les rutes que organitzen, els socis de l’associació, els guies i les activitats realitzades durant la temporada.

A partir de la informació que us faciliten, haureu d’**analitzar els requisits** i **modelar la base de dades**, identificant les entitats, atributs, relacions, cardinalitats i restriccions necessàries.

---

# Informació disponible

## Socis

Els socis s’identifiquen mitjançant el seu **DNI**.

De cada soci es vol emmagatzemar:

* DNI
* Nom
* Cognoms
* Data de naixement
* Correu electrònic
* Telèfon
* Data d’alta a l’associació

---

## Rutes

De cadascuna de les rutes es vol conèixer:

* Codi identificador
* Nom de la ruta
* Ciutat d’origen
* Ciutat de destí
* Una ciutat intermèdia per la qual passa
* Nombre de quilòmetres
* Nivell de dificultat (**alta**, **mitjana** o **baixa**)

---

## Ciutats

De cada ciutat es vol registrar:

* Nom
* Codi postal
* Comarca a la qual pertany

---

## Guies

Cada ruta té assignat un **guia responsable**.

Els guies treballen per a l’associació.

De cada guia es vol conèixer:

* DNI
* Nom
* Cognoms
* Data de naixement
* Correu electrònic
* Telèfon
* Titulació
* Data d’inici de contracte
* Data de finalització de contracte
* Sou

---

## Participació dels socis a les rutes

Els socis poden participar en rutes en dates concretes.

Cal tenir en compte que:

* una mateixa ruta es pot repetir diverses vegades en dates diferents;
* un soci pot realitzar una mateixa ruta més d’una vegada si aquesta es repeteix;
* cal registrar el **temps invertit per cada soci** en completar la ruta.

---

## Històric de rutes dels guies

Es vol mantenir un històric que permeti saber:

* quin guia ha coordinat cada ruta;
* i en quina data s’ha realitzat.

Cada ruta només pot tenir **un guia responsable en una data determinada**, però un mateix guia pot coordinar diferents rutes al llarg del temps.

---

## Equipament segons dificultat

Cada ruta té associat un nivell de dificultat:

* Baixa
* Mitjana
* Alta

Per a les rutes de dificultat **alta**, cal disposar d’un equipament específic.

De cada equipament es vol guardar:

* Codi de producte
* Nom
* Descripció

---

## Figura del “mastersoci”

Per cada ruta realitzada en una data concreta, cadascun dels socis participants tindrà assignat un **mastersoci**, que serà el responsable de representar el grup i actuar com a persona de contacte amb el guia.

El mastersoci serà l’encarregat d’informar sobre:

* indumentària necessària;
* horari;
* punt de trobada;
* altres particularitats relacionades amb la ruta.

Cal tenir en compte que:

* un mateix soci pot actuar com a mastersoci en diverses rutes diferents;
* també pot tornar a ser mastersoci en una mateixa ruta feta anteriorment en una altra data.

---

# Tasca a realitzar

A partir d’aquest enunciat es demana:

## 1. Anàlisi dels requisits

Identificar la informació rellevant del problema i les necessitats que cal cobrir amb la base de dades.

---

## 2. Disseny conceptual

Realitzar el **model entitat-relació (E/R)** indicant:

* entitats
* atributs
* claus primàries
* relacions
* cardinalitats
* atributs de relació, si n’hi ha

---

## 3. Disseny lògic

Transformar el model conceptual en **model relacional**, definint:

* taules
* claus primàries
* claus foranes

---

## 4. Justificació del model

Acompanyar el diagrama amb una breu explicació de les decisions preses durant el modelatge:

* com s’han identificat les entitats;
* com s’han interpretat les relacions;
* quines cardinalitats s’han definit;
* i per què s’ha triat aquesta proposta de model.

---

# Consideracions importants

> **Aquest exercici no té una única solució correcta.**

L’objectiu de la pràctica no és que tot el grup arribi exactament al mateix model, sinó **analitzar el problema, interpretar-lo i prendre decisions de disseny justificades**.

Per tant:

* poden existir diferents solucions vàlides;
* poden aparèixer models diferents segons la interpretació feta;
* i diverses propostes poden ser correctes si representen adequadament la informació del problema.

Ara bé, sí que hi pot haver **solucions incorrectes**, especialment quan el model:

* no permet representar alguna part de la informació de l’enunciat;
* perd informació important;
* genera incoherències;
* o impossibilita registrar casos descrits al problema.

Per aquest motiu es valorarà especialment:

* la coherència global del model;
* la capacitat de representar correctament tota la informació;
* la identificació adequada de relacions i cardinalitats;
* i la justificació raonada de les decisions de modelatge adoptades.
