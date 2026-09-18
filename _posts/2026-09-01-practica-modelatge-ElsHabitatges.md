---
title: "Modelatge conceptual d’una base de dades - Els Habitatges"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Els Habitatges

## Enunciat

Els ajuntaments dels municipis de Catalunya volen mantenir informació actualitzada dels  habitatges ubicats en zones urbanes.  Es vol dissenyar una base de dades que inclogui les característiques dels habitatges, la seva ubicació, propietaris, persones que les habiten, etc.  Aquesta informació s'utilitzarà  amb  finalitats administratives (impostos i altres) i estadístics.  Inicialment només es considerarà informació dels  habitatges de manera individual, sense fer distinció entre pisos que formen part d' un bloc o habitatges unifamiliars.

A finals d' any, l' ajuntament de cada municipi ha de cobrar a cada propietari un impost pels habitatges que són de la seva propietat en l' actualitat. Així, emet un rebut per a cada habitatge on figura el número de registre cadastral de l'habitatge, l'adreça on s'ubica l'habitatge (carrer, número i pis), el nombre de metres quadrats i el DNI i nom del propietari (tot i que la propietat   d'un habitatge pot ser compartit per diverses  persones, a efectes de cobrament d' impostos considerem només un d' ells), a més de l ' import d' impost. Aquest rebut se li remetrà a la direcció del propietari, que per suposat no té per què coincidir amb la de l' habitatge del qual ha de pagar l' impost.

L' import de  l' impost de cada habitatge depèn de múltiples factors que s' han de considerar en el seu càlcul. Entre ells hi ha el municipi i el barri o zona urbana on s'ubica l'habitatge, els m2 de l'habitatge i el preu de taxació de l'habitatge. A aquests efectes cada província consta d' una sèrie de municipis, dels quals cal mantenir el seu nom, l' àrea i perímetre i la província a la qual pertanyen; a més per identificar cada municipi s' utilitza un codi únic a nivell regional. I el seu torn cada municipi està dividit en una sèrie de barris o zones urbanes clarament delimitades. A l' hora de calcular l' impost s' ha de fer servir el preu mitjà del m2 en aquesta zona urbana.

El propietari pot realitzar el pagament de  l' impost de dues maneres: en efectiu, dirigint-se a l' ajuntament un cop li ha arribat la notificació que ha de pagar, o a través del compte bancari que el propietari hagi indicat a l' ajuntament; en aquest  últim cas la notificació només li indica al propietari que se li cobrarà l' impost i en el rebut figurarà el compte de càrrec. No és el nostre objectiu en aquest moment mantenir informació dels impostos pagats o dels morosos. Això s'abordarà més endavant.

D'altra banda, cada cert temps des de la Junta d'Extremadura se sol·liciten una sèrie d'informes destinats a diferents conselleries. 

La Conselleria d'Habitatge i Urbanisme sol sol·licitar: 

1. Una llista de totes les zones urbanes, indicant el preu mitjà del m2, el seu nom , àrea , perímetre, coordenades geogràfiques i el municipi i província al qual pertanyen, ordenats per província i municipi
2. El mateix llistat ordenat pel preu  mig del m2 a cada zona urbana.
3. Un llistat dels habitatges buits. 

La Conselleria de Benestar Social d'altra banda, sol·licita un llistat dels habitatges habitats per una única persona de 70 anys o més i les dades del barri on s'ubiquen.

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
