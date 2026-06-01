---
title: "Modelatge conceptual d’una base de dades — Plataforma de vídeos en streaming"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---

## Enunciat

Una coneguda empresa de servei de vídeos en streaming us ha encarregat el disseny d’una base de dades per gestionar de manera més eficient les sèries de producció pròpia.

A partir de la informació descrita a continuació, haureu d’analitzar els requisits i proposar el model corresponent mitjançant un **diagrama Entitat-Relació**.

---

Les persones que intervenen en les sèries formen part del **staff**. De cadascuna es vol emmagatzemar el nom, els cognoms, un codi identificatiu i el telèfon.

Dins del staff es diferencien diversos perfils relacionats amb la producció de les sèries.

Hi ha persones que participen com a actors. Un actor pot intervenir en més d’una sèrie al llarg del temps. Es vol conèixer en quines sèries ha participat, durant quant de temps hi ha treballat i quin personatge interpreta en cadascuna.

També interessa guardar el sou de cada actor. Aquest sou és propi de l’actor i es manté independentment de la sèrie en què treballi.

Les sèries s’identifiquen mitjançant un codi. De cadascuna es vol emmagatzemar també el nom, una sinopsi, el nombre de capítols i la data d’inici d’emissió.

Dins del staff també hi ha directors. D’aquests interessa conèixer la data de naixement, així com els premis que han rebut al llarg de la seva trajectòria.

De cada premi es vol guardar el nom, l’any i un codi identificatiu.

Cada sèrie és dirigida per una única persona, mentre que una mateixa persona pot haver dirigit diverses sèries.

Una altra part del staff correspon al personal de servei, com per exemple maquilladors, càmeres, electricistes o altres perfils tècnics necessaris per al rodatge.

Del personal de servei interessa guardar la seva especialitat. També es vol conservar informació sobre les diferents sèries en què han treballat al llarg del temps.

Per facilitar l’accés al catàleg per part dels usuaris de la plataforma, les sèries es classifiquen segons diferents temàtiques, com ara terror, comèdia, thriller o similars.

Una mateixa sèrie pot estar classificada dins de més d’una temàtica.

De cada temàtica es vol guardar el nom i un codi identificatiu.

Cada temàtica disposa d’una sèrie de **canals VIP** on s’agrupen les millors sèries o les més destacades d’una temporada concreta.

Aquests canals depenen directament de la temàtica a la qual pertanyen i s’identifiquen a partir del codi de la temàtica i un nom representatiu.

Una sèrie pot estar inclosa dins d’un canal VIP o pot no estar-ho. En cas d’estar inclosa, només podrà formar part d’un únic canal VIP.

Finalment, l’empresa també vol registrar determinades incompatibilitats entre actors derivades de motius personals o professionals.

Es vol conèixer quins actors no poden coincidir en una mateixa producció i també el grau d’aquesta incompatibilitat.

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

L’objectiu de la pràctica és interpretar correctament l’enunciat i decidir com representar-lo dins d’un model conceptual.

Per tant:

* poden existir diferents propostes vàlides;
* diversos grups poden arribar a solucions diferents;
* i diverses interpretacions poden ser correctes si permeten representar tota la informació requerida.

Ara bé, sí que hi pot haver **solucions errònies**, especialment quan el model no permet recollir algun dels requisits descrits o genera incoherències estructurals.

Per aquest motiu, es valorarà especialment la **capacitat d’anàlisi i la justificació de les decisions preses durant el modelatge**.
