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


🛒 Exercicis SQL amb productes i fabricants

En aquest conjunt d’exercicis treballarem les consultes bàsiques i intermèdies de SQL utilitzant una base de dades relacionada amb una botiga d’informàtica. L’objectiu és practicar la manipulació i consulta de dades reals a partir de dues taules principals:

fabricant → informació dels fabricants
producte → informació dels productes

Mitjançant aquests exercicis aprendrem a utilitzar instruccions SQL com ara SELECT, WHERE, ORDER BY, GROUP BY, JOIN i altres operadors habituals per filtrar, ordenar i relacionar dades entre taules.

Aquesta pràctica és ideal per consolidar els conceptes fonamentals de les bases de dades relacionals i entendre com gestionar informació comercial de manera eficient.

🗄️ Creació de la base de dades

Cal crear i carregar la base de dades botiga, que trobareu al següent enllaç [Base de dades MySql Botiga](/assets/botiga_sql/botiga.sql).  

Aquest fitxer inclou la creació de les taules:

fabricant
producte

i també les dades necessàries per poder realitzar totes les consultes dels exercicis.

A continuació, es mostren les activitats a fer.

{:.activity}
### Consultes sobre una taula

> 📸 Recorda fer captures.
{:.prompt-info}


* Llista el nom de tots els productes que hi ha a la taula producte.
* Llista els noms i els preus de tots els productes de la taula producte.
* Llista totes les columnes de la taula producte.
* Llista el nom dels productes, el preu en euros i el preu en dòlars nord-americans (USD).
* Llista el nom dels productes, el preu en euros i el preu en dòlars nord-americans (USD). Utilitza els següents àlies per a les columnes: nom del producte, euros, dòlars.
* Llista els noms i els preus de tots els productes de la taula producte, convertint els noms a majúscules.
* Llista els noms i els preus de tots els productes de la taula producte, convertint els noms a minúscules.
* Llista el nom de tots els fabricants en una columna, i en una altra columna obtén en majúscules els dos primers caràcters del nom del fabricant.
* Llista els noms i els preus de tots els productes de la taula producte, arrodonint el valor del preu.
* Llista els noms i els preus de tots els productes de la taula producte, truncant el valor del preu per mostrar-lo sense cap xifra decimal.
* Llista l’identificador dels fabricants que tenen productes a la taula producte.
* Llista l’identificador dels fabricants que tenen productes a la taula producte, eliminant els identificadors que apareixen repetits.
* Llista els noms dels fabricants ordenats de forma ascendent.
* Llista els noms dels fabricants ordenats de forma descendent.
* Llista els noms dels productes ordenats en primer lloc pel nom de forma ascendent i en segon lloc pel preu de forma descendent.
* Retorna una llista amb les 5 primeres files de la taula fabricant.
* Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricant. La quarta fila també s’ha d’incloure a la resposta.
* Llista el nom i el preu del producte més barat. (Utilitza només les clàusules ORDER BY i LIMIT).
* Llista el nom i el preu del producte més car. (Utilitza només les clàusules ORDER BY i LIMIT).
* Llista el nom de tots els productes del fabricant l’identificador del qual és igual a 2.
* Llista el nom dels productes que tenen un preu menor o igual a 120 €.
* Llista el nom dels productes que tenen un preu major o igual a 400 €.
* Llista el nom dels productes que no tenen un preu major o igual a 400 €.
* Llista tots els productes que tinguin un preu entre 80 € i 300 €. Sense utilitzar l’operador BETWEEN.
* Llista tots els productes que tinguin un preu entre 60 € i 200 €. Utilitzant l’operador BETWEEN.
* Llista tots els productes que tinguin un preu superior a 200 € i que l’identificador del fabricant sigui igual a 6.
* Llista tots els productes on l’identificador del fabricant sigui 1, 3 o 5. Sense utilitzar l’operador IN.
* Llista tots els productes on l’identificador del fabricant sigui 1, 3 o 5. Utilitzant l’operador IN.
* Llista el nom i el preu dels productes en cèntims (caldrà multiplicar per 100 el valor del preu). Crea un àlies per a la columna que conté el preu que s’anomeni cèntims.
* Llista els noms dels fabricants el nom dels quals comenci per la lletra S.
* Llista els noms dels fabricants el nom dels quals acabi amb la vocal e.
* Llista els noms dels fabricants el nom dels quals contingui el caràcter w.
* Llista els noms dels fabricants el nom dels quals sigui de 4 caràcters.
* Retorna una llista amb el nom de tots els productes que contenen la cadena Portàtil en el nom.
* Retorna una llista amb el nom de tots els productes que contenen la cadena Monitor en el nom i tenen un preu inferior a 215 €.
* Llista el nom i el preu de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent).

{:.prompt-info}
## Dóna'm el teu feedback

<div class="strawpoll-embed" id="strawpoll_BJnXVG4zkZv" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_BJnXVG4zkZv" src="https://strawpoll.com/embed/BJnXVG4zkZv" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

