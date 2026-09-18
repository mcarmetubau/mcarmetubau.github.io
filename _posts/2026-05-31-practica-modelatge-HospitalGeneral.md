---
title: "Modelatge conceptual d’una base de dades - Hospital General"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Hospital General

## Enunciat

En un centre hospitalari es desitja informatitzar part de la gestió relativa a pacients i els seus ingressos. Després de l’anàlisi realitzat, s’estableixen els següents requeriments:

* Les dades d’interès que es desitja emmagatzemar del pacient són: el número de la seguretat social, el DNI, el nom complet i la data de naixement. A més cada pacient també té un codi únic que l’identifica.

* Volem registrar els ingressos que realitza el pacient. Cada ingrés vindrà identificat per un codi únic i una data-hora d’arribada, una de sortida i una descripció.

* Durant l’ingrés volem saber en quin llit ha estat el pacient. 

* Caldrà tenir en compte que els llits s’enumeren correlativament per cada planta, és a dir, existirà el llit número 12 de la tercera planta i també el número 12 de la setena planta. Les plantes de l’hospital estaran identificats per número de planta, el seu nom i el número de llits que disposa. 

* Per cada pacient s’entregarà fins a un màxim de 4 targetes de visita. Aquestes targetes de visita seran vàlides per visitar a un únic pacient. La targeta de visita es definirà per: Un número de targeta de visita, l’hora d’inici i l’hora de finalització en que es pot visitar el malalt. 

* Un pacient durant el seu ingrés pot tenir varies visites mèdiques. Cada visita la fa un metge determinat, tot i que el poden visitar diferents metges al llarg de l’ingrés. Volem saber la data-hora de la visita i les observacions que ha posat el metge. 

* Les dades d’interès dels metges seran el número de col·legiat i el nom complet

Heu de tenir en compte que el disseny ha de permetre:

* Saber el llit on ha estat el pacient durant el seu ingrés.
* Saber les visites que s’han realitzat durant aquell ingrés i quin metge ha realitzat cada visita.

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
