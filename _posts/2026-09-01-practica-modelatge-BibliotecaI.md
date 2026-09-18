---
title: "Modelatge conceptual d’una base de dades - BibliotecaI"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, Enunciat, tasca,practica, mysql]
---

# Pràctica: Modelatge conceptual d’una base de dades — Biblioteca I

## Enunciat

Suposem que volem dissenyar una base de dades per a una biblioteca i hem conegut que aquesta funciona de la següent forma:

A la biblioteca es troben, com és natural, una sèrie de llibres que els empleats demanen a les editorials. Quan un llibre es rep, se li dona d'alta, construint-li una fitxa per a recerca per autor i una altra fitxa per a recerca per tema. En ambdues fitxes apareixen el títol del llibre, el nom de l' autor i la seva nacionalitat, l' editorial a la qual pertany la publicació, el tema sobre el qual tracta, l' ISBN i la prestatgeria de la biblioteca en la qual es troba. Cal aclarir que a la biblioteca no es troben exemplars repetits de cap llibre. Les prestatgeries de la biblioteca suporten com a màxim 100 llibres i tenen un número i un lloc assignat dins la biblioteca. Un empleat pot demanar un llibre escrivint una carta de petició a l' editorial corresponent. La direcció a la qual ha de dirigir la carta es troba en un arxiu d' editorials.

Per accedir  als llibres de la biblioteca cal la possessió d'  un carnet que acredita els diferents usuaris. Aquest carnet es confecciona a cada persona la primera vegada que intenta retirar un llibre. Cada usuari només pot tenir retirat un llibre en cada instant determinat.

A la biblioteca els agradaria disposar d'un  llistat que es llançaria al final de cada dia i en el qual apareixeria, per a cada llibre que s'encengués retirat, el títol, l'ISBN, l'autor i el número de carnet, nom i el DNI de l'usuari que el manté retirat.

Quan un usuari intenta retirar un llibre ha de presentar el seu carnet perquè es prengui nota de la retirada. Si el llibre que desitja ha estat retirat per un altre usuari es truca a aquest per telèfon indicant-li que hi ha un altre usuari que desitja el llibre perquè el retorni en cas que no l'estigui utilitzant.

Mensualment es confecciona un inventari actualitzat on s' indica per a cada llibre el nom, l' autor i el lloc de la biblioteca on es troba.

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
