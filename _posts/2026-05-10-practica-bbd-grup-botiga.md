---
title: "Tasca: Introducció a consultes SQL - Consultes RESUM"
date: 2026-05-10 11:00:00 +0100
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
### Consultes Resum

> 📸 Recorda fer captures.
{:.prompt-info}


## Consultes resum

1. Calcula el nombre total de productes que hi ha a la taula `producte`.

2. Calcula el nombre total de fabricants que hi ha a la taula `fabricant`.

3. Calcula el nombre de valors diferents d’identificador de fabricant que apareixen a la taula `producte`.

4. Calcula la mitjana del preu de tots els productes.

5. Calcula el preu més barat de tots els productes.

6. Calcula el preu més car de tots els productes.

7. Llista el nom i el preu del producte més barat.

8. Llista el nom i el preu del producte més car.

9. Calcula la suma dels preus de tots els productes.

10. Calcula el nombre de productes que té el fabricant Asus.

11. Calcula la mitjana del preu de tots els productes del fabricant Asus.

12. Calcula el preu més barat de tots els productes del fabricant Asus.

13. Calcula el preu més car de tots els productes del fabricant Asus.

14. Calcula la suma de tots els productes del fabricant Asus.

15. Mostra el preu màxim, el preu mínim, el preu mitjà i el nombre total de productes que té el fabricant Crucial.

16. Mostra el nombre total de productes que té cadascun dels fabricants. El llistat també ha d’incloure els fabricants que no tenen cap producte. El resultat mostrarà dues columnes: una amb el nom del fabricant i una altra amb el nombre de productes que té. Ordena el resultat descendentment pel nombre de productes.

17. Mostra el preu màxim, el preu mínim i el preu mitjà dels productes de cadascun dels fabricants. El resultat mostrarà el nom del fabricant juntament amb les dades sol·licitades.

18. Mostra el preu màxim, el preu mínim, el preu mitjà i el nombre total de productes dels fabricants que tenen un preu mitjà superior a 200 €. No és necessari mostrar el nom del fabricant; amb l’identificador del fabricant és suficient.

19. Mostra el nom de cada fabricant, juntament amb el preu màxim, el preu mínim, el preu mitjà i el nombre total de productes dels fabricants que tenen un preu mitjà superior a 200 €. És necessari mostrar el nom del fabricant.

20. Calcula el nombre de productes que tenen un preu major o igual a 180 €.

21. Calcula el nombre de productes que té cada fabricant amb un preu major o igual a 180 €.

22. Llista el preu mitjà dels productes de cada fabricant, mostrant només l’identificador del fabricant.

23. Llista el preu mitjà dels productes de cada fabricant, mostrant només el nom del fabricant.

24. Llista els noms dels fabricants els productes dels quals tenen un preu mitjà major o igual a 150 €.

25. Retorna un llistat amb els noms dels fabricants que tenen 2 o més productes.

26. Retorna un llistat amb els noms dels fabricants i el nombre de productes que té cadascun amb un preu superior o igual a 220 €. No és necessari mostrar el nom dels fabricants que no tenen productes que compleixin la condició.

Exemple del resultat esperat:

| nom | total |
|---|---|
| Lenovo | 2 |
| Asus | 1 |
| Crucial | 1 |

27. Retorna un llistat amb els noms dels fabricants i el nombre de productes que té cadascun amb un preu superior o igual a 220 €. El llistat ha de mostrar el nom de tots els fabricants; és a dir, si hi ha algun fabricant que no té productes amb un preu superior o igual a 220 €, haurà d’aparèixer al llistat amb un valor igual a 0 en el nombre de productes.

Exemple del resultat esperat:

| nom | total |
|---|---|
| Lenovo | 2 |
| Crucial | 1 |
| Asus | 1 |
| Huawei | 0 |
| Samsung | 0 |
| Gigabyte | 0 |
| Hewlett-Packard | 0 |
| Xiaomi | 0 |
| Seagate | 0 |

28. Retorna un llistat amb els noms dels fabricants on la suma del preu de tots els seus productes sigui superior a 1000 €.

29. Retorna un llistat amb el nom del producte més car que té cada fabricant. El resultat ha de tenir tres columnes: nom del producte, preu i nom del fabricant. El resultat ha d’estar ordenat alfabèticament de menor a major pel nom del fabricant.


{:.prompt-info}

## Dóna'm el teu feedback

<div class="strawpoll-embed" id="strawpoll_BJnXVG4zkZv" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_BJnXVG4zkZv" src="https://strawpoll.com/embed/BJnXVG4zkZv" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

