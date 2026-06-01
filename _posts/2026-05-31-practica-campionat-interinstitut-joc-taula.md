---
title: "Modelatge conceptual d’una base de dades — Campionat interinstituts de joc de taula"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

## Enunciat

L’Ajuntament de Vic vol organitzar un campionat de joc de taula entre els diferents instituts de la ciutat. El joc escollit per a la competició és el **Catán**.

El campionat es desenvolupa en dues fases. En una primera fase, cada districte de la ciutat organitza el seu propi torneig amb els instituts que hi pertanyen. Posteriorment, els instituts guanyadors de cada districte participen en la fase final del campionat.

A partir de la informació descrita a continuació, caldrà analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

De cada districte interessa enregistrar el seu nom i un codi que el permeti identificar de manera única.

Cada institut disposa també d’un codi identificatiu propi. A més, es vol conservar el nom del centre, el codi postal i l’adreça on està ubicat.

Cada districte agrupa un o més instituts, mentre que cada institut pertany únicament a un districte.

Per participar al campionat, els instituts poden inscriure un conjunt de participants. No tots els instituts de la ciutat hi participen, només aquells que formalitzen la inscripció.

En alguns casos, un institut pot ser representat per un altre centre.

De cada participant es vol guardar el seu codi identificatiu, nom, cognoms, correu electrònic, telèfon i l’històric dels campionats en què ha participat. Aquest historial s’enregistrarà indicant-ne l’any.

Dins dels participants hi ha diferents rols relacionats amb el desenvolupament del campionat.

Hi ha participants que competeixen com a jugadors. D’aquests també interessa conèixer la seva data de naixement.

També hi ha participants que actuen com a àrbitres.

Una mateixa persona no pot actuar simultàniament com a jugador i com a àrbitre.

Durant el campionat es disputen diferents partides.

Cada partida queda identificada per un codi seqüencial propi.

A cada partida hi participen quatre jugadors i un únic àrbitre responsable de supervisar-la.

Es vol conservar el registre de les partides que disputa cada jugador i també el color amb què juga en cadascuna.

Tot jugador inscrit al campionat participa almenys en una partida.

Les partides es desenvolupen dins dels instituts participants.

Cada institut disposa de diferents sales on es poden celebrar les partides.

Cada sala pertany a un únic institut i no pot existir independentment d’aquest.

De cada sala interessa guardar un codi identificatiu, la seva capacitat i els recursos o equipaments disponibles, com ara projector, ordinador, megafonia o altres mitjans.

De cada partida es vol saber en quin institut i en quina sala s’ha disputat, així com la data concreta en què s’ha jugat.

Cada partida es juga en una única sala i en una única data determinada.

També es vol poder consultar quins jugadors i quin àrbitre han participat en cadascuna de les partides disputades.

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

L’objectiu de la pràctica és interpretar l’enunciat i prendre decisions de modelatge a partir de la informació proporcionada.

Per tant:

* poden existir diferents propostes vàlides;
* diferents grups poden arribar a models diferents;
* i diverses interpretacions poden ser correctes si representen adequadament la realitat descrita.

Ara bé, sí que hi pot haver **solucions incorrectes**, especialment quan no es recull tota la informació necessària o es generen incoherències dins del model.

Per aquest motiu, es valorarà especialment:

* la capacitat d’anàlisi;
* la coherència del model proposat;
* la correcta definició d’atributs, claus i cardinalitats;
* i la justificació de les decisions preses durant el procés de modelatge.
