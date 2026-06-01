---
title: "Modelatge conceptual d’una base de dades — Parc d’atraccions"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

## Enunciat

A continuació es planteja un cas pràctic per realitzar el disseny d’una base de dades d’un **parc d’atraccions**, que haureu de modelar mitjançant un **diagrama Entitat-Relació**.

Es demana analitzar la informació descrita i proposar un model que permeti representar-la adequadament.

---

Cada parc s’identifica pel seu nom i també s’emmagatzemarà el telèfon de contacte i la localitat on es troba.

S’enregistrarà la informació dels empleats dels parcs, identificats pel seu DNI. De cadascun es vol conèixer el nom i els cognoms. Aquests empleats són contractats per un parc, però poden canviar de parc al llarg del temps i, fins i tot, poden tornar a ser contractats per un parc on ja havien treballat anteriorment. Es vol conservar l’històric de contractacions.

Hi ha dos tipus d’empleats:

* encarregats, dels quals es vol enregistrar també el títol de capacitació;
* auxiliars, dels quals es vol enregistrar l’antiguitat.

Els encarregats tenen una o més especialitats, i una mateixa especialitat pot correspondre a diversos encarregats. De cada especialitat es vol guardar el codi i el nom.

També es vol enregistrar la informació de les atraccions. Cada atracció s’identifica per un nom únic i també es vol guardar l’aforament i el tipus d’atracció. Un parc disposa de diverses atraccions, i una mateixa atracció pot estar present en diferents parcs.

Cada encarregat és assignat durant un període de temps a una única atracció, i cada atracció té assignat un únic encarregat en cada moment. Una atracció pot canviar d’encarregat al llarg del temps i també pot tornar a tenir assignat un encarregat que ja havia tingut anteriorment. Es vol conservar el registre històric d’aquestes assignacions, incloent-hi la data final d’assignació.

Per altra banda, s’han de considerar les empreses de manteniment. De cadascuna es vol enregistrar la seva informació identificativa i el nom. Hi haurà empreses que poden ser subsidiàries d’altres empreses, i aquesta informació també s’haurà de poder representar.

També es vol mantenir un registre històric de les tasques de manteniment realitzades per aquestes empreses sobre les atraccions al llarg del temps.

Cal enregistrar també les entrades per visitar els parcs. Aquestes entrades s’identifiquen per un número d’entrada únic dins de cada data. De cada entrada es vol guardar també la data de compra i el preu.

Les dates d’obertura han de permetre enregistrar la data corresponent, així com l’hora d’inici i l’hora de tancament.

Cada entrada inclou l’ús d’una o més atraccions. Una mateixa atracció pot estar inclosa en diferents entrades. L’ús de les atraccions pot correspondre a una data diferent de la data associada a l’entrada.

Finalment, es vol registrar la informació dels clients que compren les entrades. De cadascun es guardarà la informació identificativa, el nom, els cognoms i el número de targeta de crèdit. Cal saber quin client ha comprat cada entrada, tenint en compte que cada entrada correspon a un únic comprador.

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

L’objectiu de la pràctica és analitzar l’enunciat, interpretar-ne la informació i prendre decisions de modelatge justificades.

Per tant:

* poden existir diferents propostes vàlides;
* grups diferents poden arribar a solucions diferents;
* i més d’un model pot representar correctament el problema plantejat.

Ara bé, sí que hi pot haver **solucions errònies**, especialment si no permeten representar tota la informació descrita o si introdueixen incoherències en el model.

Per aquest motiu, a més del diagrama final, serà important **justificar les decisions i interpretacions adoptades durant el modelatge**.
