---
title: "Tasca: Introducció a XML"
date: 2026-08-15 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, XML, FP, Activitat, Tasca, Pràctica]
---

## Lliurament i presentació

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).


## Qualificació

La tasca es qualificarà amb una nota de 0 a 10.

## Activitats

### Activitat 1

Estructureu en format XML les dades que es mostren a continuació i que fan referència a una llista d’empleats d’una empresa d’informàtica.
[Llista empleats](/assets/mostra_csv.png/)
#### Instruccions

* Ha de contenir només les dades contingudes en el fitxer CSV original (no se n’han d’afegir d’altres).
* Les dades han d’estar estructurades de manera coherent, amb elements i atributs, afegint un element arrel per a tota l’estructura resultant, anomenat, per exemple, `DBLAN`, així com un altre element que serveixi per agrupar les dades de cada fila del document CSV, com ara `EMPLEAT`, en un document XML ben format.
* El document ha de disposar d’una capçalera adequada que indiqui la codificació que s’ha d’utilitzar, per tal de poder ser visualitzat correctament en funció dels caràcters que contingui.

Es valorarà la correcta indentació del codi font, que reflecteixi l’estructura jeràrquica del document XML resultant.

Abans de fer el lliurament, heu de comprovar la validesa del document resultant a [XML Validation](http://www.xmlvalidation.com/?L=0).

> Temps aproximat de resolució: 45 minuts.
> {:.prompt-info}

### Activitat 2

En funció de l’estructura d’arbre proporcionada en el diagrama següent, construïu un document XML que emmagatzemi correctament les dades que s’hi mostren, corresponents a una llista de sucursals d’una empresa d’informàtica (tot i que, per raons d’espai, només es mostren de manera resumida les dades corresponents a una sola sucursal).
[Estructura arbre XML](/assets/EstructuraDBLAN.png/)
Utilitzeu elements i atributs per emmagatzemar les dades, segons es desprengui del diagrama en cada cas, tot respectant l’estructura jeràrquica existent entre els diferents elements i entre cada element i els seus atributs, quan sigui necessari:

* Els elements estan representats per rectangles i els seus valors dins d’el·lipses.
* Els atributs estan ubicats dins dels rectangles dels elements respectius, i els seus valors estan expressats entre cometes, a la dreta del símbol `=`.

La solució ha de contenir només les dades contingudes en el diagrama original (no se n’han d’afegir d’altres), estructurades de manera coherent en un document XML ben format.

A més, el document ha de disposar d’una capçalera adequada que indiqui la codificació que s’ha d’utilitzar, per tal de poder ser visualitzat correctament en funció dels caràcters que contingui.

Es valorarà la correcta indentació del codi font, que reflecteixi l’estructura jeràrquica del document XML resultant.

Abans de fer el lliurament, heu de comprovar la validesa del document resultant a [XML Validation](http://www.xmlvalidation.com/?L=0).

> Temps aproximat de resolució: 1,5 h.
> {:.prompt-info}






### Activitat 3

Dissenya un document vàlid en XML que permeti estructurar la informació d'una agenda de telèfons. Suposa que la informació que podem tenir d'una persona és el seu nom i cognoms, la seva adreça i els seus telèfons, que poden ser el telèfon de casa, el mòbil i el telèfon de la feina.

> Temps aproximat de resolució: 45 minuts.
> {:.prompt-info}

### Activitat 4

Dissenya un document vàlid en XML que permeti estructurar la informació de les receptes de cuina d'un restaurant i aplica'l a la recepta següent. Cal fer-ho de manera que un sistema informàtic pugui fer cerques per ingredients, quantitat de comensals o nom de la recepta. Això vol dir que els ingredients, la quantitat de comensals i el nom de la recepta han de ser dades aïllades de la resta d'informació, és a dir, han de ser elements atòmics.

Sopa de ceba (4 persones).

Ingredients:

* 1 Kg. de cebes.
* 2 l. de brou de carn.
* 100 g de mantega.
* 1 cullerada de farina.
* 100 g de formatge emmental suís o gruyère ratllat.
* Pa torrat en llesques.
* Farigola.
* 1 fulla de llorer.
* Pebre.

Procés:

* Pelar i tallar les cebes en rodanxes fines.
* Sofregir-les amb la mantega, sal i pebre a foc lent fins que estiguin transparents sense que es daurin.
* Afegir la farina sense deixar de remenar.
* Posar-ho en una cassola amb el brou, la farigola i el llorer.
* Deixar coure a foc lent durant uns 15 minuts.
* Posar les llesques de pa per sobre, empolsinar amb el formatge i gratinar al forn.

> Temps aproximat de resolució: 1,5 h.
> {:.prompt-info}

### Activitat 5

Dissenya un document XML vàlid que permeti estructurar la informació per permetre la gestió informàtica dels alumnes d'un mòdul del cicle formatiu DAM. Aplica'l al mòdul de Llenguatges de Marques i Sistemes de Gestió d'Informació, sabent que té assignades 4 hores setmanals i és de caràcter obligatori. El mòdul s'imparteix entre el 15 de setembre de 2010 i el 30 de juny de 2011. Hi ha dos alumnes matriculats:

* Ana Fernández Gutiérrez amb NIF 16965696L, telèfon 789654321, correu electrònic [ana.fdezgtrrez@hotmail.com](mailto:ana.fdezgtrrez@hotmail.com), la seva adreça és C/ El Percebe, 13 de Santander CP 39302. No hi ha informació sobre les faltes d'assistència ni les seves notes fins al moment.
* Pepito Grillo amb NIF 98765432H, telèfon 656566555, correu electrònic [yhyh@yahoo.com](mailto:yhyh@yahoo.com), la seva adreça és Av. El Pez, 5 de Suances CP 39401. La seva nota és "apte" i no té faltes d'assistència.

> Temps aproximat de resolució: 1,5 h.
> {:.prompt-info}

---
