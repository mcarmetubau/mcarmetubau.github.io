---
title: "Activitat Xpath sobre el document XML inventari de productes - informació bancaria"
date: 2026-06-09 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, XPATH, FP, Activitat, Tasca, Pràctica]
---


## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA

> 📸 Recorda fer captures.
{:.prompt-info}


## Inventari de productes

En els exercicis següents es farà servir el fitxer XML següent:

```xml
<inventari>
    <producte codi="AAA-111">
        <nom>Teclat</nom>
        <pes unitat="g">480</pes>
    </producte>
    <producte codi="ACD-981">
        <nom>Monitor</nom>
        <pes unitat="kg">1.8</pes>
    </producte>
    <producte codi="DEZ-138">
        <nom>Ratolí</nom>
        <pes unitat="g">50</pes>
    </producte>
</inventari>
```

## Exercicis

1. Extreu tots els elements `pes` (incloent-hi l'etiqueta).
Resultat:

```xml
<pes unitat="g">480</pes>
<pes unitat="kg">1.8</pes>
<pes unitat="g">50</pes>
```

2. Extreu els valors de tots els elements `pes` (sense l'etiqueta).

Resultat:

```
480
1.8
50
```

3. Extreu el pes de l'últim producte.

Resultat:

```xml
<pes unitat="g">50</pes>
```

4. Extreu les diferents unitats en què s'han emmagatzemat els pesos.
Resultat:

```
g
kg
g
```

5. Extreu el penúltim codi.
Resultat:

```
ACD-981
```

6. Extreu el pes del producte amb codi `AAA-111`.
Resultat:

```xml
<pes unitat="g">480</pes>
```

7. Extreu el nom dels productes que tenen el pes expressat en grams.

Resultat:

```xml
<nom>Teclat</nom>
<nom>Ratolí</nom>
```

8. Extreu el codi dels productes que es diuen «Monitor».
Resultat:

```
ACD-981
```


9. Extreu el codi dels productes que pesen més d'un quart de quilogram.

Resultat:

```
AAA-111
ACD-981
```

# Informació bancària

Donat el següent document XML:

```xml
<llistat>
    <compte>
        <titular dni="5671001D">Ramon Perez</titular>
        <saldoActual moneda="euros">12000</saldoActual>
        <dataCreacio>13-abril-2012</dataCreacio>
    </compte>

    <fons>
        <compteAssociat>20-A</compteAssociat>
        <dades>
            <quantitatDipositada>20000</quantitatDipositada>
            <moneda>Euros</moneda>
        </dades>
    </fons>

    <fons>
        <compteAssociat>21-DX</compteAssociat>
        <dades>
            <quantitatDipositada>4800</quantitatDipositada>
            <moneda>Dòlars</moneda>
        </dades>
    </fons>

    <compte>
        <titular dni="39812341C">Carmen Diaz</titular>
        <saldoActual moneda="euros">1900</saldoActual>
        <dataCreacio>15-febrer-2011</dataCreacio>
    </compte>
</llistat>
```

## Consulta: «quantitat dipositada»

### Enunciat

Extreu la quantitat dipositada al fons associat al compte **20-A**.


### Resultat

```
20000
```

---

## Consulta: «monedes utilitzades»

### Enunciat

Extreu un llistat de totes les monedes utilitzades pels diferents fons, sense etiquetes.


### Resultat

```
Euros
Dòlars
```

---

## Consulta: «DNI dels comptes en dòlars»

### Enunciat

Extreu el DNI dels titulars dels comptes que utilitzen dòlars com a moneda base.



## Consulta: «fons en euros amb menys de 2500 unitats monetàries»

### Enunciat

Extreu tota la informació dels fons que estiguin expressats en euros i que tinguin una quantitat dipositada inferior a 2500.




### Enunciat

Extreu el nom de tots els titulars dels comptes.


### Enunciat

Extreu els DNI de tots els titulars.


### Enunciat


Extreu el saldo actual de tots els comptes.


### Enunciat

Extreu els comptes amb un saldo superior a 5000 euros.



### Enunciat

Extreu el DNI dels titulars que tenen un saldo superior a 5000 euros.


### Enunciat

Extreu la moneda utilitzada pel fons associat al compte 21-DX.


### Enunciat

Extreu la quantitat dipositada més gran.

