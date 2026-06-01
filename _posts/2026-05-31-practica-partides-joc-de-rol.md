---
title: "Modelatge conceptual d’una base de dades — Gestió de partides d’un joc de rol"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---

## Enunciat

Una associació de jugadors de rol us ha encarregat dissenyar una base de dades per gestionar les partides i la informació relacionada amb el joc de manera més àgil i organitzada.

A partir de la informació descrita a continuació, caldrà analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

Per poder participar al joc, els jugadors han d’estar registrats al sistema.

De cada jugador es vol emmagatzemar un codi identificatiu, el DNI, el nom, els cognoms, la data de naixement, el telèfon, el correu electrònic i el saldo disponible en euros dins del joc.

Cada jugador pot disposar de diversos personatges.

De cada personatge es vol guardar el codi, el nom, els punts de vida, l’atac i la defensa.

Cada personatge pertany a un únic jugador.

Els personatges poden correspondre a diferents tipus dins del joc, com per exemple bruixes, mags, cavallers, guerrers o altres classes.

De cada tipus interessa conservar un codi i una descripció.

El joc també disposa de diversos elements que els personatges poden utilitzar o obtenir durant les partides.

De cada element es vol guardar el codi, el nom i el preu.

Aquests elements poden correspondre a diferents categories segons la seva funció dins del joc.

Hi ha elements utilitzats per construir escenaris, elements relacionats amb el combat i altres relacionats amb la recuperació o millora dels personatges.

Cada element només pot pertànyer a una única categoria.

Durant el joc, els personatges poden anar obtenint diferents elements.

Un mateix element pot ser aconseguit per diferents personatges.

Es vol enregistrar quins elements obté cada personatge i la data en què els ha aconseguit.

El joc disposa també de diferents escenaris.

Cada escenari és creat per un personatge concret, que n’és el propietari.

De cada escenari es vol guardar el número identificatiu, una descripció i el tipus d’escenari.

Un personatge pot crear diversos escenaris.

També es vol conservar informació sobre quins elements s’han utilitzat per construir cada escenari i la quantitat emprada de cadascun.

Durant les partides es poden produir atacs entre personatges.

Quan un personatge passa per l’escenari d’un altre personatge, es considera que es produeix un atac.

D’aquestes situacions interessa enregistrar quin escenari ha estat atacat, quin personatge ha realitzat l’atac, amb quin element ho ha fet, la data en què s’ha produït i quin n’ha estat el resultat.

Un mateix personatge pot atacar un mateix escenari diverses vegades al llarg del temps i pot fer-ho amb diferents elements.

Els jugadors també es poden organitzar en clubs per col·laborar durant les partides.

De cada club interessa conservar un codi identificatiu i el nom.

Un jugador, en un moment determinat, només pot pertànyer a un club.

Es vol enregistrar la data en què el jugador es dona d’alta al club.

No és necessari conservar l’historial de canvis o baixes dels jugadors dins dels clubs.

Finalment, per poder començar a jugar dins del sistema cal haver rebut la invitació d’un altre jugador.

Un jugador pot convidar diversos altres jugadors.

Es vol poder consultar, per a qualsevol jugador, qui l’ha convidat, a quins jugadors ha convidat ell i en quina data s’ha produït cada invitació.

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

L’objectiu principal de la pràctica és interpretar correctament l’enunciat i decidir com representar la realitat descrita dins d’un model conceptual.

Per tant:

* poden existir diferents propostes vàlides;
* diferents grups poden arribar a solucions diferents;
* i diverses interpretacions poden ser correctes si permeten representar adequadament tota la informació requerida.

Ara bé, sí que hi pot haver **solucions incorrectes**, especialment si el model no permet representar alguna part dels requisits o genera incoherències estructurals.

Per aquest motiu es valorarà especialment:

* la capacitat d’anàlisi;
* la coherència global del model proposat;
* la correcta definició d’atributs, claus i cardinalitats;
* i la justificació de les decisions de modelatge adoptades.
