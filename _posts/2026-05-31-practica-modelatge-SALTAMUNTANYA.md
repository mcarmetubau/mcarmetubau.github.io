---
title: "Enunciat modelatge de base de dades - SALTAMUNTANYA"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Associació excursionista SALTAMUNTANYA

## Enunciat

L’associació excursionista **SALTAMUNTANYA** us sol·licita organitzar la informació de les rutes que realitzen, així com les dades dels seus socis.

A partir de la informació descrita a continuació, haureu de dissenyar la base de dades corresponent i modelar-la mitjançant un **diagrama Entitat-Relació**.

---

Els socis s’han d’identificar pel seu DNI i d’ells es vol conèixer el nom i cognoms, la data de naixement, el correu electrònic, el telèfon i la data d’alta a l’associació.

De cadascuna de les rutes que es realitzen es vol conèixer la ciutat d’origen i de destí, així com una altra ciutat intermèdia per la qual passa. També es vol registrar el nombre de quilòmetres. Cada ruta té un nom i un codi que la identifica.

De cada ciutat es vol enregistrar el seu nom, el codi postal i la comarca a la qual pertany.

Per cada ruta hi ha un guia que n’és el responsable i que treballa per a l’associació. D’aquest guia es vol conèixer la mateixa informació que dels socis, excepte la data d’alta a l’associació. A més, també es vol enregistrar la titulació, la data d’inici i fi de contracte, i el sou.

Els socis realitzen una ruta en una data determinada, podent repetir tantes vegades com es vulgui una mateixa ruta en dates diferents. Caldrà també emmagatzemar el temps que ha invertit cada soci en realitzar la ruta.

Cada ruta només pot tenir un guia responsable en una data determinada, però cada guia ha de poder coordinar qualsevol de les rutes existents. A més, es vol mantenir un històric de cadascuna de les rutes realitzades, indicant en quina data es va dur a terme.

Cada ruta té un nivell de dificultat que pot ser **alta**, **mitjana** o **baixa**. Per al nivell de dificultat **alt**, cal disposar d’un equipament determinat. D’aquest equipament cal emmagatzemar el codi de producte, el nom i la descripció.

Per cadascuna de les rutes que es realitzen en una data determinada, cadascun dels socis participants té assignat un company **mastersoci** que el representa i que serà l’encarregat de contactar amb el guia i informar els socis sobre la indumentària necessària, l’horari, el punt de trobada i qualsevol altra particularitat relacionada amb la ruta.

Un mateix soci pot actuar com a mastersoci en més d’una ruta en diferents dates, i també pot tornar a ser mastersoci d’una mateixa ruta realitzada anteriorment.

Els socis del centre excursionista poden realitzar diverses rutes al llarg de la temporada i, per fer-les, poden rebre assessorament del personal que té el càrrec de guia.

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
* i diverses solucions poden ser correctes si permeten representar adequadament el problema plantejat.

Ara bé, sí que hi pot haver **solucions errònies**, especialment si el model no permet representar tota la informació descrita o si introdueix incoherències.

Per aquest motiu, es valorarà especialment la capacitat de **justificar les decisions i interpretacions adoptades durant el procés de modelatge**.
