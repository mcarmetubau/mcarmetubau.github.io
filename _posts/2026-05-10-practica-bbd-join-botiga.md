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

En aquest apartat treballarem consultes SQL utilitzant l’operador JOIN, que ens permet relacionar dades de diferents taules dins d’una base de dades.
L’objectiu d’aquests exercicis és aprendre a:

Relacionar taules mitjançant claus foranes (id_fabricant)
Fer consultes combinades amb JOIN
Filtrar dades amb WHERE
Ordenar resultats amb ORDER BY
Utilitzar funcions com LIMIT, IN i LIKE

Aquest bloc és clau per entendre com funcionen les bases de dades relacionals, ja que en situacions reals les dades gairebé sempre es troben distribuïdes en diverses taules connectades entre si.


🗄️ Creació de la base de dades

Cal crear i carregar la base de dades botiga, que trobareu al següent enllaç [Base de dades MySql Botiga](/assets/botiga_sql/botiga.sql).  

Aquest fitxer inclou la creació de les taules:

fabricant
producte

i també les dades necessàries per poder realitzar totes les consultes dels exercicis.

A continuació, es mostren les activitats a fer.

{:.activity}
### Consultes INNER JOIN - JOIN

> 📸 Recorda fer captures.
{:.prompt-info}


* Retorna una llista amb el nom del producte, el preu i el nom del fabricant de tots els productes de la base de dades.
* Retorna una llista amb el nom del producte, el preu i el nom del fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant en ordre alfabètic.
* Retorna una llista amb l’identificador del producte, el nom del producte, l’identificador del fabricant i el nom del fabricant, de tots els productes de la base de dades.
* Retorna el nom del producte, el seu preu i el nom del seu fabricant del producte més barat.
* Retorna el nom del producte, el seu preu i el nom del seu fabricant del producte més car.
* Retorna una llista de tots els productes del fabricant Lenovo.
* Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu superior a 200 €.
* Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate, sense utilitzar l’operador IN.
* Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate, utilitzant l’operador IN.
* Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi amb la vocal e.
* Retorna un llistat amb el nom i el preu de tots els productes el nom del fabricant dels quals contingui el caràcter w.
* Retorna un llistat amb el nom del producte, el preu i el nom del fabricant de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent).
* Retorna un llistat amb l’identificador i el nom del fabricant només d’aquells fabricants que tenen productes associats a la base de dades.

{:.prompt-info}
## Dóna'm el teu feedback

<div class="strawpoll-embed" id="strawpoll_BJnXVG4zkZv" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_BJnXVG4zkZv" src="https://strawpoll.com/embed/BJnXVG4zkZv" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

