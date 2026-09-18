---
title: "Modelatge conceptual d’una base de dades - ToySrus"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — ToySrus

## Enunciat

L’empresa TOYSRUS  S.A, la qual dona servei a diferents països del món, està interessada en contractar els nostres serveis per al disseny d’una nova base de dades.

* A l’empresa li interessa conèixer molt bé les joguines existents al mercat. D’entre elles l’interessa, a més a més, distingir-ne dos tipus ja que consideren que són molt importants per les campanyes nadalenques; són les joguines educatives i les esportives (lògicament hi ha joguines que poden ser, alhora, educatives i relacionades amb algun esport). 
  
* De les joguines esportives volen saber quin és l’esport de la joguina i si es tracta d ’un esport d’equip o no. Respecte les joguines educatives volen saber quina capacitat del nen eduquen(només una, la principal) com ara; la memòria, el càlcul, el llenguatge, etc... 
  
* De les joguines volen conèixer el nom, el preu, la descripció i l’edat a partir de la qual són adequades per començar a jugar-hi. A més a més, consideren important conèixer quines joguines són equivalents entre elles, així com en quina mesura (o grau) són semblants. 
  
* L’empresa disposa de molts  magatzems on guarden les joguines. Cada magatzem té un nom (que l’identifica) i es vol conèixer la població on està situat, així com els m2 de capacitat. A cada població hi ha com a màxim un magatzem, el qual dona servei pel lliurament de les joguines. Les poblacions que no disposen de magatzem són servides per algun altre magatzem (el de la població més propera, per exemple). També volen conèixer, en tot moment, quin és l’estoc actual que hi ha al magatzem per cada joguina. 
  
* Les poblacions tenen un nom que les identifica ( però hem de tenir en compte que hi ha poblacions que es diuen igual en altres països ) i també volen conèixer el nombre d’habitants de cada població. Cal recordar que l’empresa treballa a l’àmbit internacional i per una població determinada hem de saber a quin país pertany.  

* Finalment, l’empresa té empleats que treballen en un magatzem determinat. Ens interessa saber la data en que ha començat a treballar en la nostra empresa i el seu salari

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
