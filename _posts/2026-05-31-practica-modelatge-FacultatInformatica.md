---
title: "Enunciat modelatge de base de dades - Facultat Informàtica"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Gestió de la docència d’una facultat d’informàtica

## Enunciat

El rectorat d’una universitat us ha encarregat dissenyar una base de dades per gestionar la docència de la facultat d’informàtica.

A partir de la informació descrita a continuació, haureu d’analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

La facultat està estructurada en departaments, identificats per un codi i un nom. Cada departament té assignada la impartició de la docència d’algunes assignatures. No hi ha assignatures impartides per més d’un departament.

De les assignatures es vol conèixer el seu codi, nom, preu i descripció. També s’ha de poder representar quines assignatures s’aconsellen com a prerequisit d’altres assignatures.

De cada assignatura poden existir diferents grups. Els grups s’identifiquen mitjançant un codi compost format pel codi de l’assignatura, la lletra del torn (**M** per matí, **T** per tarda) i un número.

De les aules es vol conèixer el seu codi, si disposen de connexió a Internet, si tenen projector, les dimensions i la capacitat màxima d’alumnes.

Tant de l’alumnat com del professorat s’ha d’emmagatzemar un conjunt de dades personals bàsiques: DNI, nom, cognoms, adreça, població i província.

De l’alumnat, a més, es vol conèixer l’any d’ingrés a la facultat i el número identificatiu de matrícula.

Del professorat interessa enregistrar la seva categoria laboral i la seva dedicació, que pot ser a temps complet o a temps parcial.

Els alumnes es matriculen cada curs acadèmic en diferents grups de les assignatures.

Es vol emmagatzemar les qualificacions obtingudes per cada alumne a cadascuna de les dues convocatòries de cada curs per a cada assignatura.

El professorat està adscrit a un únic departament, mentre que en un departament hi poden estar adscrits diversos professors i professores. Es vol conservar també la data exacta d’adscripció al departament.

Cada professor o professora s’encarrega de la docència d’un o més grups de diverses assignatures.

També interessa conèixer el tipus de docència que imparteix cada professorat en cada grup, que pot ser:

* teoria
* problemes
* pràctiques

Cal tenir en compte que un professor o professora pot impartir més d’un tipus de docència dins d’un mateix grup.

A la vegada, un mateix grup pot tenir més d’un professor o professora impartint docència.

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
