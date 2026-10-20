---
title: "Manual YAML "
date: 2026-10-01 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Administració de sistemes gestors de bases de dades, ASIX, FP, Llenguatge, Marques, YAML]
---
# Introducció a YAML

YAML és un format que permet descriure dades i configuracions mitjançant fitxers de text pla llegibles per les persones.

Quan es treballa amb fitxers de configuració, sovint es troben exemples que se centren en el **contingut** del fitxer, però no expliquen prou bé **com** s'ha de crear, quines regles cal seguir i com s'ha de descriure la informació en format YAML.

Afortunadament, YAML és molt senzill i n'hi ha prou de conèixer un parell d'estructures bàsiques per començar a crear fitxers de configuració.

YAML és un format de serialització de dades basat en text pla, dissenyat perquè la informació sigui fàcil de llegir i editar. S'utilitza habitualment en el món del programari per emmagatzemar configuracions i representar estructures de dades.

El nom YAML prové de *YAML Ain't Markup Language* (YAML no és un llenguatge de marques). Originalment, les sigles significaven *Yet Another Markup Language* (Un altre llenguatge de marques més), però el nom es va modificar per reflectir millor la finalitat del format.

L'ús de YAML per definir configuracions ofereix diversos avantatges:

- **Comoditat:** no cal especificar tots els paràmetres manualment mitjançant una línia d'ordres.
- **Manteniment:** els fitxers YAML es poden gestionar amb un sistema de control de versions per registrar-ne els canvis.
- **Flexibilitat:** permet representar estructures complexes de manera clara i llegible.
- **Llegibilitat:** la sintaxi és relativament senzilla i facilita la comprensió de les dades.

YAML és un superconjunt de JSON pel que fa a la sintaxi dels documents: qualsevol document JSON vàlid també és un document YAML vàlid.

## Recomanacions generals

A l'hora de crear un fitxer YAML, convé seguir aquestes recomanacions:

- Utilitza sempre la codificació UTF-8 per evitar problemes amb els caràcters.
- **No utilitzis mai tabulacions per indentar.** Fes servir espais.
- Utilitza un editor de text amb una font monoespaiada i ressaltat de sintaxi.
- Mantén una indentació coherent al llarg de tot el fitxer.
- Utilitza noms de claus descriptius i afegeix comentaris quan sigui necessari.

Per començar a treballar amb YAML, és fonamental conèixer dues estructures:

- **Mapes:** associacions de claus i valors.
- **Llistes:** col·leccions ordenades d'elements.

A més, cal saber que qualsevol línia que contingui un comentari introduït amb `#` permet afegir explicacions que no formen part de les dades. El comentari pot aparèixer al començament d'una línia o després d'un valor, sempre que el caràcter `#` s'interpreti com a inici d'un comentari i no com a part d'una cadena de text.

## 1. Mapes YAML

Els mapes permeten associar parelles de claus i valors. Són molt útils per representar informació de configuració, ja que cada clau identifica un valor determinat.

Per exemple, podem tenir una configuració com aquesta:

```yaml
---
nom: exemple
versio: "1.0"
```

La primera línia, `---`, és un separador que indica l'inici d'un document YAML. És opcional quan el fitxer conté un únic document, però pot ser útil per delimitar documents.

En aquest exemple, tenim dues claus, `nom` i `versio`, associades als valors `exemple` i `"1.0"`, respectivament.

No sempre cal posar els valors entre cometes simples o dobles. Les cometes són útils quan volem evitar interpretacions incorrectes o conservar un valor com a cadena de text.

Per exemple:

```yaml
nom: exemple
codi: "00123"
activat: true
```

En aquest cas, `nom` és una cadena de text, `codi` és una cadena que conserva els zeros inicials i `activat` és un valor booleà.

Les parelles clau-valor d'un mapa no tenen un ordre significatiu. Per tant, podem escriure-les en l'ordre que vulguem.

El document anterior també es podria escriure així:

```yaml
---
activat: true
codi: "00123"
nom: exemple
```

El significat de les dades és el mateix.

### 1.1. Mapes niats

Podem incloure mapes dins d'altres mapes per crear estructures més complexes.

Per exemple:

```yaml
---
aplicacio:
  nom: exemple
  configuracio:
    idioma: ca
    registre: info
```

En aquest cas, `aplicacio` és un mapa que conté dues claus: `nom` i `configuracio`.

La clau `configuracio` conté un altre mapa, amb les propietats `idioma` i `registre`.

Podem niar tants mapes dins d'altres mapes com necessitem.

### 1.2. La indentació

Per indicar que un element està contingut dins d'un altre, YAML utilitza la indentació.

En l'exemple anterior hem utilitzat dos espais per nivell, però també es poden utilitzar altres quantitats d'espais, sempre que la indentació sigui coherent.

El processador YAML interpreta que les claus que es troben al mateix nivell d'indentació pertanyen al mateix mapa. En canvi, les claus que estan més indentades formen part d'un mapa o d'una estructura subordinada.

Per exemple:

```yaml
usuari:
  nom: Maria
  adreca:
    ciutat: Barcelona
    pais: Catalunya
```

Aquí, `nom` i `adreca` són propietats d'`usuari`, mentre que `ciutat` i `pais` són propietats d'`adreca`.

Una indentació incorrecta pot provocar errors de sintaxi o modificar l'estructura interpretada.

## 2. Llistes YAML

Una llista en YAML és una seqüència ordenada d'elements. A diferència d'un mapa, els elements no necessiten una clau pròpia: la seva posició depèn de l'ordre en què apareixen.

Per exemple:

```yaml
arguments:
  - sleep
  - 1000
  - message
  - "Hello World!"
```

En aquest cas, `arguments` és una clau associada a una llista de quatre elements.

Una llista pot contenir qualsevol nombre d'elements.

Cada element de la llista va precedit d'un guió (`-`) i s'escriu amb la indentació adequada respecte de la clau que conté la llista.

Per exemple, una llista de noms es podria representar així:

```yaml
noms:
  - Maria
  - Joan
  - Anna
```

L'ordre dels elements és significatiu: Maria apareix primer, Joan segon i Anna tercer.

### 2.1. Llistes de mapes

De la mateixa manera que podem niar mapes dins d'altres mapes, també podem incloure mapes dins de llistes.

Per exemple:

```yaml
# Configuració fictícia
serveis:
  - nom: web
    imatge: nginx
    ports:
      - 80
  - nom: lector
    imatge: exemple/lector
    ports:
      - 8080
```

En aquest exemple:

- `serveis` és una llista.
- Cada element de la llista és un mapa.
- Cada mapa conté les claus `nom`, `imatge` i `ports`.
- `ports` és, al seu torn, una llista de valors numèrics.

Això mostra com es poden combinar mapes i llistes per descriure estructures de dades més complexes.

### 2.2. Llistes niades

També podem incloure llistes dins d'altres llistes.

Per exemple:

```yaml
matriu:
  - - 1
    - 2
  - - 3
    - 4
```

Aquesta estructura representa una llista de dues llistes. La primera conté els valors `1` i `2`, i la segona conté `3` i `4`.

## 3. Resum de les estructures YAML

En resum, les estructures fonamentals de YAML són:

- **Mapes:** grups de parelles de clau i valor.
- **Llistes:** col·leccions ordenades d'elements individuals.
- **Mapes de mapes:** mapes que contenen altres mapes.
- **Mapes de llistes:** mapes que contenen llistes.
- **Llistes de mapes:** llistes en què cada element és un mapa.
- **Llistes de llistes:** llistes que contenen altres llistes.

Aquestes estructures es poden combinar per representar una gran varietat de dades i configuracions.

## 4. Comentaris en YAML

Els comentaris permeten documentar el contingut d'un fitxer sense modificar les dades que representa.

S'introdueixen amb el caràcter `#`.

```yaml
# Configuració general
aplicacio: botiga
versio: "2.0"  # Versió actual
activa: true
```

Els comentaris són ignorats pel processador YAML i resulten útils per explicar el significat de determinats paràmetres.

## 5. Conclusions

YAML és un format de serialització de dades senzill i llegible que s'utilitza en nombroses aplicacions i eines de programari.

Per començar a crear fitxers YAML, només cal comprendre els conceptes bàsics següents:

1. Les claus i els valors dels mapes.
2. Els elements de les llistes.
3. La indentació com a mecanisme per representar la jerarquia.
4. Els comentaris per documentar les configuracions.
5. La combinació de mapes i llistes per representar estructures complexes.

Amb aquests coneixements bàsics, resulta molt més senzill interpretar i crear fitxers de configuració YAML per a diferents aplicacions, serveis i eines.


YAML no es considera habitualment un llenguatge de marques perquè es classifica com un format de serialització de dades. La seva sintaxi està dissenyada per expressar dades estructurades de manera llegible, en lloc d'utilitzar etiquetes per delimitar elements d'un document.YAML no es considera habitualment un llenguatge de marques perquè es classifica com un format de serialització de dades. La seva sintaxi està dissenyada per expressar dades estructurades de manera llegible, en lloc d'utilitzar etiquetes per delimitar elements d'un document.