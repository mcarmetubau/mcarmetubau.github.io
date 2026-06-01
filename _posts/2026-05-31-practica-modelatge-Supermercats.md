---
title: "Enunciat modelatge de base de dades - Facultat Informàtica"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---
# Pràctica: Modelatge conceptual d’una base de dades — Cadena de supermercats

## Enunciat

Una cadena de supermercats us ha demanat dissenyar una base de dades per informatitzar la gestió de les seves botigues.

A partir de la informació descrita a continuació, haureu d’analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

Es vol portar registre de tots els clients que accedeixen a les botigues per tal de poder oferir promocions i ofertes personalitzades en funció de les seves compres, preferències i hàbits de consum.

De cada client es vol emmagatzemar el DNI, nom, cognoms, data de naixement, telèfon, adreça, població i província.

Cada client pot comprar diversos productes al llarg del temps, i els productes poden ser comprats per múltiples clients.

Dels productes es necessita guardar el codi de barres, el nom, la descripció i el preu.

Els productes són subministrats per proveïdors. De cada proveïdor es vol emmagatzemar el NIF, el nom, el telèfon, la població i la província.

Cada producte és subministrat en exclusiva per un únic proveïdor, mentre que un proveïdor pot subministrar múltiples productes.

Els productes es troben ubicats dins de seccions del supermercat. Es vol tenir constància de la secció on es troba cada producte, ja que aquesta determina part del seu codi. També interessa conèixer el nom de la secció i la seva ubicació dins de cada botiga.

Cada producte s’ubica en una única secció, mentre que una secció pot contenir diversos productes.

La cadena també vol emmagatzemar la informació dels seus empleats.

De cada empleat es vol guardar el DNI, nom, cognoms, data de naixement, telèfon, adreça, població, província, sou, data d’alta del contracte i data de finalització del contracte.

Dins de l’empresa hi ha tres tipus d’empleats:

* **caixers**, dels quals també es vol conèixer la titulació i l’estat civil;
* **reponedors**, dels quals es vol registrar l’horari laboral, incloent l’hora d’entrada i l’hora de sortida;
* **caps de secció**, dels quals es vol conèixer també l’extra salarial que perceben.

Els caps de secció tenen assignada una secció i cada secció només pot tenir un cap assignat. També es vol tenir constància de la data des de la qual l’empleat ocupa aquesta responsabilitat.

Cada client pot tenir associats diversos **clients beneficiaris**, és a dir, altres clients que es beneficien de les seves promocions o ofertes. Al mateix temps, un client també pot ser beneficiari d’altres clients.

Quan el client es dona d’alta a l’aplicatiu ha d’indicar quins seran aquests clients beneficiaris, i es vol conservar el registre de la data en què es realitza aquesta vinculació.

Els productes poden estar associats a diverses promocions, i una mateixa promoció es pot aplicar a diversos productes.

De cada promoció es vol emmagatzemar la descripció, el percentatge de descompte i si la promoció és presencial o virtual.

També es vol conservar la data d’inici i la data de finalització de cada promoció aplicada sobre cada producte.

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
