---
title: "Tasca:Introducció a consultes SQL"
date: 2026-05-09 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Tasca, Pràctica]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA4. Consulta la informació emmagatzemada emprant assistents, eines gràfiques i el llenguatge de manipulació de dades.

## Activitats

Per a realitzar aquesta pràctica necessiteu tenir correctament instal·lats el SGBD MySql

⚽ Exercicis SQL amb equips i jugadors
En aquest post treballem consultes SQL amb un exemple de futbol utilitzant dues taules:

      teams
      players

🗄️ Creació de la base de dades
Cal crear i carregar la base de dades teams, que trobareu al següent enllaç [Base de dades MySql Futbol](/assets/team_sql/teams.sql). 


A continuació, es mostren les activitats a fer.

{:.activity}
### Consultes sobre una taula

> 📸 Recorda fer captures.
{:.prompt-info}


Llista el nom de tots els jugadors.

Llista els noms i els salaris de tots els jugadors.

Llista totes les columnes de la taula jugador.

Llista el nom dels jugadors, el salari en euros i en dòlars (USD).

Igual que l'anterior, usant àlies: nom de jugador, euros, dòlars.

Llista els noms i els salaris en majúscules.

Llista els noms i els salaris en minúscules.

Llista els noms dels equips i les dues primeres lletres en majúscules.

Llista de noms i salaris truncats (sense decimals).

Llista els identificadors dequips que tenen jugadors.

Com l'anterior, sense repetir identificadors.

Llista els noms dels equips en ordre ascendent.

Llista els noms dels equips en ordre descendent.

Llista els jugadors ordenats per nom ascendent i salari descendent.

Mostra les primeres 5 files de la taula equip.

Mostra dues files a partir de la quarta fila d'equip.

Nom i salari del jugador amb menor salari.

Nom i salari del jugador amb més salari.

Jugadors de l'equip amb id=2.

Jugadors amb salari ≤ 120.000.

Jugadors amb salari ≥ 400.000.

Jugadors amb salari < 400.000.

Jugadors amb salari entre 80.000 i 300.000 (sense BETWEEN).

Jugadors amb salari entre 60.000 i 200.000 (amb BETWEEN).

Jugadors amb salari > 200.000 i equip = 6.

Jugadors amb equip 1, 3 o 5 (sense IN).

Jugadors amb equip 1, 3 o 5 (amb IN).

Nom i salari en cèntims (àlies: centims).

Equips el nom dels quals comença per S.

Equips el nom dels quals acaba en vocal.

Equips el nom dels quals conté la lletra "a".

Equips amb nom de 4 caràcters.

Jugadors el nom dels quals conté "Jugador".

Jugadors el nom dels quals conté "Jugador" i salari < 215000.

Jugadors amb salari ≥ 180.000 ordenats per salari desc i nom asc.


{:.prompt-info}
## Dóna'm el teu feedback

<div class="strawpoll-embed" id="strawpoll_BJnXVG4zkZv" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_BJnXVG4zkZv" src="https://strawpoll.com/embed/BJnXVG4zkZv" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

