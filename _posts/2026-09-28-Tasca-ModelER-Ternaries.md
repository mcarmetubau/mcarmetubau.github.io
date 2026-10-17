---
title: "Tasca: Model E/R Ternaries"
date: 2026-09-28 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Base de dade, ASIX, Model E/R, Exercici,Tasca, Pràctica]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'apte o no apte.

Durada activitats obligatòries: 3 hores.

RA 

> 📸 Recorda fer captures dels passos realitzats
{:.prompt-info}  


# Exemples de «possibles» ternàries

## Discussió

Per tenir una interrelació ternària, cal que en la interrelació necessitem la participació de les **3 entitats a la vegada**.

A més, en discutir les cardinalitats d'una branca, aquesta ha de dependre de la variació dels dos components de la parella inicial.

És a dir, si tenim tres entitats A-B-C en allò que creiem una interrelació ternària, quan mirem cardinalitats:

Si tenim que alguna de les entitats depèn directament d'una altra (i no de la parella), aleshores és que la interrelació entre aquestes entitats és binària, i probablement no caldrà considerar la ternària.

El millor és començar amb una relació binària clara, i plantejar-ne la tercera com si fos un atribut (si és que vull saber només una dada). Si vull saber més coses d'aquest concepte, ja l'obliguem a ser una entitat (encara que sigui de multiplicitat 1 a la seva branca).

Si, per contra, encara que sigui només una dada (atribut), pot ser multivaluada a la seva branca, també s'obliga a ser una entitat.

Apliquem aquests conceptes a les següents «possibles» interrelacions ternàries, per decidir quines ho són realment i quines no.

De cada punt, respon les preguntes, crea el model E/R i explica les teves decisions.

---

## 1. Universitat, professors, assignatures i cursos

La Universitat vol registrar quins professors imparteixen quines assignatures en quins cursos.

**Preguntes:**
- Crea el model E/R.
- Ha de ser Universitat una entitat?

Si canviem l'enunciat i diem:

> Les universitats (en plural) volen registrar quins professors imparteixen quines assignatures en quins cursos.

En què canvia el model E/R?

## 2. Empleats i sucursals

Els empleats treballen (o han treballat) a sucursals. Volem saber quan comencen a treballar i quan cessen en una sucursal.

## 3. Actors, pel·lícules i personatges

Els actors actuen a pel·lícules, en què interpreten personatges.

**Preguntes:**
- Si només volem el nom del personatge, és un atribut?
- Volem saber més coses dels personatges? Sí.

## 4. Accidents, carreteres i cotxes

Els accidents succeeixen a carreteres i impliquen cotxes.

## 5. Jugadors, contractes i equips de futbol

Els jugadors de futbol tenen contractes amb els equips.

**Indicacions:**
- Posa els atributs que creguis convenients als contractes i als equips.
- Volem saber també la data en què es va realitzar el contracte.

---

## 6. Partits de futbol

### 6.1. Modelització dels partits

Modelitza la informació dels partits de futbol.

Els equips juguen partits.

En aquest cas, modelitzarem **Partit com una entitat** (vegeu la nota).

De cada partit volem saber:
- Identificador (`id_partit`).
- Data i hora.
- Resultat.
- Àrbitre.
- Minuts afegits.

De cada equip volem saber:
- Identificador (`id_equip`).
- Nom.
- Any de fundació.
- Nom de l'estadi en què juga.
- Nom del president.

**Requisit:** tingueu en compte que en un partit un equip juga com a local i l'altre com a visitant.

### 6.2. Ampliació 1: retransmissions televisives

Els partits són retransmesos per cadenes de televisió.

### 6.3. Ampliació 2: gols

Als partits es marquen gols. Un gol sembla una cosa important.

Pensa què podríem voler saber dels gols (possibles atributs?) i modelitza-ho al teu diagrama E/R.

### Nota

També podríem haver modelitzat el nostre partit d'una altra manera:

> Un partit és un enfrontament d'un equip contra un altre equip en una data i hora.

Vist així, el model E/R quedaria d'una altra forma. Però aquest exercici no demana tot això.

---

## 7. Professors i tesis doctorals

Els professors supervisen les tesis doctorals d'altres professors.

**Indicacions:**
- Volem saber coses de les tesis.
- Pensa en els atributs adequats de cada entitat.

## 8. Proveïdors, peces i projectes

Els proveïdors subministren peces als projectes de la nostra empresa.

Volem saber quins proveïdors han subministrat quines peces a quins projectes i en quina quantitat ho han fet.

### Subministraments

Volem saber **quan es produeixen els subministraments** (la peça, el proveïdor i el projecte).

Evidentment, quan s'acaba una peça i en necessitem més, fem una altra petició.

A més, quan es fa un lliurament d'un subministrament, a la nostra empresa hi ha d'haver algun empleat responsable que s'encarregui de:
- Fer-ne la recepció.
- Comprovar que tot està en ordre.
- Donar-hi el vistiplau.

**Restricció:** d'un determinat subministrament només se'n fa responsable un únic empleat.
