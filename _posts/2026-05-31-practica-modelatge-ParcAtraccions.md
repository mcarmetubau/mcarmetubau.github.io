---
title: "Enunciat modelatge de base de dades - Parc d'atraccions"
date: 2026-05-31 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, eunciat, tasca,practica, mysql]
---


# Pràctica: Modelatge de base de dades — Parc d’atraccions

## Enunciat

A continuació es planteja un cas pràctic per al disseny d’una base de dades d’un **parc d’atraccions**.

L’objectiu és **analitzar els requisits** descrits i **modelar la base de dades** mitjançant un **diagrama Entitat-Relació (E/R)**.

A partir de la informació facilitada, haureu d’identificar les entitats, els atributs, les relacions, les cardinalitats i les restriccions necessàries per representar correctament tota la informació del sistema.

---

# Informació disponible

## Parcs d’atraccions

De cada parc es vol registrar:

* Nom del parc (**identificador**)
* Telèfon de contacte
* Localitat on es troba

---

## Empleats

Es vol enregistrar la informació dels empleats dels diferents parcs.

Cada empleat s’identifica pel seu:

* DNI

I també es vol conèixer:

* Nom
* Cognoms

Cada empleat és contractat per un parc.

Cal tenir en compte que:

* un empleat pot canviar de parc al llarg del temps;
* pot deixar de treballar en un parc i tornar-hi posteriorment;
* es vol conservar el **registre històric de contractacions**.

---

## Tipus d’empleats

Hi ha dos tipus d’empleats:

### Encarregats

Dels encarregats es vol guardar també:

* Títol de capacitació

---

### Auxiliars

Dels auxiliars es vol guardar també:

* Antiguitat

---

## Especialitats

Els encarregats poden tenir una o més especialitats.

Una mateixa especialitat pot correspondre a diversos encarregats.

De cada especialitat es vol registrar:

* Codi d’especialitat (**identificador**)
* Nom de l’especialitat

---

## Atraccions

Es vol registrar informació de les atraccions.

De cada atracció es vol conèixer:

* Nom (**identificador únic**)
* Aforament
* Tipus d’atracció

Cal tenir en compte que:

* un parc disposa de diverses atraccions;
* una mateixa atracció pot estar present en diversos parcs.

---

## Assignació d’encarregats a atraccions

Cada encarregat és assignat durant un període de temps a una atracció.

Cal tenir en compte que:

* cada encarregat està assignat a una única atracció mentre dura una assignació;
* cada atracció té assignat un únic encarregat en cada moment;
* una atracció pot canviar d’encarregat al llarg del temps;
* una atracció pot tornar a tenir assignat un encarregat que ja havia tingut anteriorment;
* es vol mantenir el **registre històric d’assignacions**, incloent-hi la **data final d’assignació**.

---

## Empreses de manteniment

També es vol registrar informació de les empreses de manteniment.

De cada empresa es vol guardar:

* NIF (**identificador**)
* Nom

A més:

* hi ha empreses que poden ser **subsidiàries** d’altres empreses;
* aquesta relació també s’ha de poder representar.

---

## Manteniment d’atraccions

Les empreses de manteniment realitzen tasques de manteniment sobre les atraccions.

Es vol conservar l’històric de:

* quina empresa ha fet el manteniment;
* sobre quina atracció;
* i en quin moment s’ha realitzat.

---

## Entrades

Es vol enregistrar la informació de les entrades dels visitants.

Cada entrada s’identifica per:

* Número d’entrada
* Data

Cal tenir en compte que:

* el número d’entrada és únic **dins de cada data**;
* per tant, en dates diferents poden existir entrades amb el mateix número.

De cada entrada també es vol guardar:

* Data de compra
* Preu

---

## Dates d’obertura

De cada data es vol registrar:

* Data
* Hora d’inici
* Hora de tancament

Aquest horari serà comú per a tots els parcs en aquella data.

---

## Ús d’atraccions associades a una entrada

Cada entrada inclou l’ús d’una o més atraccions.

Cal tenir en compte que:

* una entrada pot incloure diverses atraccions;
* una mateixa atracció pot aparèixer en moltes entrades diferents;
* l’ús d’aquestes atraccions pot correspondre a una data diferent de la data associada a l’entrada.

---

## Clients

Es vol registrar la informació dels clients que compren les entrades.

De cada client es vol guardar:

* DNI (**identificador**)
* Nom
* Cognoms
* Número de targeta de crèdit

Cal tenir en compte que:

* cada entrada és comprada per **un únic client**;
* un client pot comprar diverses entrades.

---

# Tasca a realitzar

A partir de l’enunciat es demana:

## 1. Anàlisi dels requisits

Identificar tota la informació rellevant del problema i les necessitats que haurà de cobrir la base de dades.

---

## 2. Disseny conceptual

Realitzar el **diagrama Entitat-Relació (E/R)** indicant:

* entitats
* atributs
* claus primàries
* relacions
* cardinalitats
* especialització/generalització si escau
* atributs de relació, si n’hi ha

---

## 3. Disseny lògic

Transformar el model conceptual en **model relacional**, definint:

* taules
* claus primàries
* claus foranes

---

## 4. Justificació del model

Acompanyar la proposta amb una breu explicació de les decisions de modelatge adoptades:

* com s’han identificat les entitats;
* com s’han resolt les relacions temporals o històriques;
* com s’han interpretat les cardinalitats;
* i per què s’ha escollit aquesta proposta de model.

---

# Consideracions importants

> **Aquest exercici no té una única solució correcta.**

L’objectiu de la pràctica no és obtenir un model únic i exacte, sinó **analitzar el problema, interpretar els requisits i prendre decisions de disseny justificades**.

Per tant:

* poden existir diverses solucions vàlides;
* diferents grups poden arribar a models diferents;
* i més d’una proposta pot ser correcta si representa adequadament la informació descrita.

Ara bé, sí que hi pot haver **solucions incorrectes**, especialment quan el model:

* no permet representar alguna situació descrita a l’enunciat;
* perd informació rellevant;
* genera incoherències;
* o no permet mantenir correctament l’històric d’informació.

Es valorarà especialment:

* la coherència global del model;
* la correcta identificació d’entitats i relacions;
* el tractament adequat de la informació temporal i històrica;
* la definició correcta de cardinalitats;
* i la justificació raonada de les decisions preses durant el modelatge.
