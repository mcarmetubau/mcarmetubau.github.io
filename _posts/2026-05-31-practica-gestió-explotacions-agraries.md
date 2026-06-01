---
title: "Modelatge conceptual d’una base de dades — Gestió d’explotacions agràries comunals"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---

## Enunciat

L’ajuntament d’una població de la província de Lleida us ha encarregat el disseny d’una base de dades per gestionar les terres de cultiu comunals del municipi.

A causa de la gran extensió d’aquestes terres i de la manca de població dedicada al sector agrícola, l’ajuntament ha decidit arrendar-les a diverses empreses agràries perquè les explotin.

L’objectiu és conservar l’activitat agrícola del municipi, mantenir el valor productiu del territori i gestionar correctament tota la informació relacionada amb aquestes explotacions.

A partir de la informació descrita a continuació, caldrà analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

Les terres comunals es troben organitzades en diferents explotacions agràries distribuïdes per diverses zones del terme municipal.

Cada zona és coneguda pel seu nom històric i també interessa enregistrar-ne la superfície total expressada en quilòmetres quadrats amb finalitats estadístiques.

Dins de cada zona hi pot haver diverses explotacions agràries.

Les explotacions agràries s’identifiquen mitjançant un codi numèric.

De cadascuna es vol guardar també el nom amb què tradicionalment és coneguda, la superfície total i la data d’inici de la concessió d’explotació.

Cada explotació està dividida en sectors d’explotació.

Cada sector s’identifica amb una numeració pròpia dins de l’explotació corresponent, i també es vol enregistrar la seva superfície.

Cada sector es dedica a un únic cultiu.

Dels cultius interessa conservar el codi internacional identificatiu, el nom popular i el preu històric de venda per quilogram.

Hi ha cultius que es consideren complementaris entre si des del punt de vista de la conservació i manteniment de la qualitat del sòl.

Aquesta complementarietat pot venir determinada pel fet que un cultiu sigui adequat abans o després d’un altre dins del cicle agrícola.

Es vol poder consultar aquesta informació per facilitar la planificació agrícola i la rotació de cultius.

L’arrendament de les explotacions es fa mitjançant concessions administratives a empreses del sector agrari per períodes de temps determinats.

En cada moment una explotació és explotada per una única empresa, però es vol conservar l’històric complet de totes les concessions realitzades.

De les empreses es vol guardar el NIF, el nom i el telèfon de contacte.

També interessa registrar la data d’inici i la data de finalització de cada concessió.

A més, es vol emmagatzemar la informació dels treballadors que formen part d’aquestes empreses.

De cada treballador es vol guardar el DNI, el nom i cognoms, el número d’afiliació a la Seguretat Social i el telèfon.

Dins del personal hi ha diferents perfils professionals relacionats amb l’activitat agrícola.

Hi ha treballadors dedicats a tasques tècniques d’enginyeria agrícola, dels quals també interessa conservar la titulació universitària i l’any de finalització dels estudis.

Aquests professionals poden participar en diferents projectes tècnics al llarg del temps.

Un mateix projecte pot comptar amb la participació de diversos professionals.

De cada projecte es vol guardar el codi identificatiu, el títol, el pressupost destinat i una descripció.

També hi ha treballadors dedicats a tasques de camp.

D’aquests interessa registrar des de quina data exerceixen aquesta activitat.

A més, es vol conèixer en quin sector d’explotació desenvolupen actualment la seva feina.

També és necessari mantenir l’historial de contractació dels treballadors dins de les diferents empreses.

En un moment determinat un treballador presta servei en una única empresa, però al llarg del temps pot haver treballat en diverses empreses diferents i fins i tot haver tornat a treballar en una empresa on ja havia estat contractat anteriorment.

Per aquest motiu és important conservar el registre històric d’aquestes vinculacions laborals.

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

L’objectiu principal és interpretar l’enunciat i decidir com representar adequadament la realitat descrita mitjançant un model conceptual.

Per tant:

* poden existir diferents propostes vàlides;
* diferents grups poden arribar a solucions diferents;
* i diverses interpretacions poden ser correctes si permeten representar correctament tots els requisits plantejats.

Ara bé, sí que hi pot haver **solucions incorrectes** quan el model no recull alguna part de la informació o genera incoherències.

Per aquest motiu es valorarà especialment:

* la capacitat d’anàlisi,
* la coherència del model proposat,
* i la justificació de les decisions de modelatge adoptades.
