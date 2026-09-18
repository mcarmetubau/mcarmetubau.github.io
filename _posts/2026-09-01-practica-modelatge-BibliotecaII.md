---
title: "Modelatge conceptual d’una base de dades - BibliotecaII"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Biblioteca II

## Enunciat


Imagina que has aconseguit un contracte en període de prova amb una empresa d'enginyeria de programari per dissenyar els models de dades de les aplicacions. Aquesta empresa ha rebut recentment l'encàrrec d'un projecte per part d'una cadena de biblioteques privades establertes a la ciutat de Barcelona. Per provar la teva vàlua professional, aquesta empresa t'encarrega  el disseny d'una  base de dades que reculli el més fidelment possible les dades manejades per aquest conjunt de biblioteques i la seva semàntica. Després de visitar una d'aquestes biblioteques i conèixer el seu funcionament has obtingut les següents conclusions:

Les biblioteques que pertanyen a aquesta organització privada estan localitzades en diferents punts de la ciutat i cadascuna d'elles sol estar especialitzada en una àrea determinada. Cada biblioteca disposa d' un cert nombre d' exemplars del mateix llibre i un únic exemplar periòdic de cada revista a la qual està subscrita.

A cada biblioteca li està permès cada cert temps realitzar comandes d'exemplars de llibres a una sèrie d'editorials amb  les quals l'organització  manté acords.  La primera vegada que un exemplar d'un llibre es rep es cataloga. D' altra banda, les biblioteques també es poden subscriure a revistes publicades per aquestes editorials, de tal manera que a partir de la data de subscripció rebran els exemplars de manera periòdica.
La informació que s'utilitza per a la catalogació de les publicacions (llibres o revistes) és la següent:

* Nom o títol de la publicació
* Temes: conjunt de descriptors dels temes codificats per l' organització
* Editorial: nom, adreça i telèfon
* Codi ISBN, únic per a cada publicació
* Idioma de la publicació

A més, sobre els llibres també es guarden el número de l ' edició, la data de publicació i els autors i d' aquests es manté, a més del seu nom, la seva nacionalitat. De les revistes se' n guarda la periodicitat.

Cal  assenyalar  que les  dades sobre les diferents publicacions es troben centralitzades per a totes les biblioteques i per a cadascuna d' elles el que es manté és la informació dels exemplars de què disposa de cada publicació, sense tenir repetides per a cada exemplar les dades de catalogació. Per identificar els diferents exemplars del mateix llibre dins d' una biblioteca s' utilitza un número d' exemplar i, també, ens interessa la data en què va ser adquirit. Per als exemplars periòdics de les revistes utilitzarem el número real de la revista; per exemple, en una determinada biblioteca de la revista AAA a la qual la biblioteca està subscrita poden estar dipositats els números 21,22, 23 i 24.

D'altra banda, perquè una persona pugui retirar un llibre de qualsevol de les biblioteques només necessita fer-se soci d'una d'elles. Per això ha de fer una sol·licitud amb les seves dades personals (dni, nom, adreça i telèfon) i a canvi se li lliura un carnet amb un número únic que li dona dret a prendre prestats llibres o revistes de qualsevol de les biblioteques de l'organització.  A través d'internet  i amb el seu número de carnet, i com a clau el  seu DNI, el soci pot consultar els títols disponibles i en  quines biblioteques de la  l' organització pot trobar-ne exemplars i si aquests estan prestats o no. En el futur es permetrà fer reserves per la xarxa, i el soci podrà demanar que un exemplar d' un títol concret estigui disponible a la biblioteca que desitja, però aquesta opció de moment no es vol implementar.

Un cop  la persona és soci d'una   biblioteca està en disposició de sol·licitar préstecs d'exemplars, tot i que amb algunes restriccions.   En primer lloc, s' ha d' adreçar a la biblioteca que té dipositat algun exemplar del llibre o revista que vol demanar. En el cas dels llibres, els socis poden tenir en préstec diversos llibres alhora, per un període màxim d' una setmana. Els exemplars de les revistes, però, no poden ser trets de les biblioteques, i un soci no en pot tenir més alhora, del qual podrà com a  màxim disposar durant un dia, al final del qual l' haurà de retornar.  Aquesta restricció es deu al al altri que només es disposa d' un exemplar de cada número periòdic de la revista a la qual la biblioteca està subscrita. Només alguns socis especials, com investigadors acreditats, poden saltar-se aquesta restricció i tenir en préstec un exemplar d' una revista amb les mateixes condicions que per als llibres. Per a aquests socis, a més, s' ha de guardar el nom de l' entitat per a la qual treballen.

Diàriament, un quart  d'hora abans del tancament, a cada biblioteca un procés ens informa de les revistes en préstec que han de ser retornades. Setmanalment, l'organització llança un llistat amb els exemplars de llibres (i de revistes) que havent finalitzat el seu termini de préstec encara no han estat retornats pels socis, per tal de reclamar-los a aquests.

Anualment, s' obté un llistat amb tots els préstecs d' exemplars de llibres, juntament amb els socis i els períodes en què els han retirat, amb l ' objecte d' enviar-los a les editorials perquè aquestes construeixin les seves estadístiques sobre l' interès que susciten els seus llibres  en els lectors. 

També anualment s' obtenen estadístiques del nombre de socis nous que s' han inscrit a cadascuna de les biblioteques.

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
