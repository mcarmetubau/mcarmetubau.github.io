---
title: "Tasca: Generació documents YAML i JSON"
date: 2026-09-25 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, YAML, FP, Exercici,Tasca, Pràctica]
---

# Exercicis pràctics de YAML i JSON

Per a cada exercici, crea un document YAML amb les dades requerides i comprova que sigui vàlid.

Pots utilitzar [Yamllint](https://www.yamllint.com/) o una eina equivalent en línia per validar els documents YAML.

**Opcional:** crea també les dades corresponents en format JSON i valida-les amb una eina en línia, com ara [JSONLint](https://jsonlint.com/).

## 1. Diccionari amb `hostname`, `loopback` i `maxint`

Crea un diccionari que contingui els atributs següents: `hostname`: una cadena de text, `loopback`: una adreça IP,  `maxint`: un nombre.

## 2. Diccionari amb `hostname`, `loopback` i `interfaces`

Crea un diccionari que contingui els atributs següents:

- `hostname`: una cadena de text.
- `loopback`: una adreça IP.
- `interfaces`: una llista de cadenes de text.

## 3. Llista de parelles d'usuari i contrasenya

Crea una llista de parelles que continguin els atributs següents:

- `username`: una cadena de text amb el nom d'usuari.
- `password`: una cadena de text amb la contrasenya.

## 4. Llista d'usuaris amb atributs obligatoris i opcionals

Crea una llista d'usuaris que tinguin els atributs següents.

**Atributs obligatoris:**
- `username`: nom d'usuari.
- `password`: contrasenya.

**Atributs opcionals:**
- `privilege`: un nombre que indica el nivell de privilegi.
- `autocommand`: una cadena de text que especifica una ordre automàtica.

## 5. Llista de veïns BGP

Crea una llista de veïns BGP (*Border Gateway Protocol*) que tinguin els atributs següents.

**Atributs obligatoris:**
- `address`: una adreça IP.
- `description`: una cadena de text descriptiva.
- `asn`: el número del sistema autònom.

**Atributs opcionals:**
- `state`: l'estat del veí, que pot ser `present`, `absent` o `down`.
- `policy`: el nom d'un *route map* (mapa de rutes).

## 6. Llista de veïns BGP amb prefixos

Crea una llista de veïns BGP amb la mateixa estructura que en l'exercici anterior i afegeix-hi l'atribut opcional següent:

- `prefixes`: una llista de prefixos IP.

## 7. Descripció d'un encaminador BGP

Crea una descripció d'un encaminador BGP que contingui els atributs següents:

- `hostname`: una cadena de text amb el nom de l'encaminador.
- `loopback`: una adreça IP.
- `asn`: un nombre que representa el número del sistema autònom.
- `interfaces`: una llista de parelles de nom i adreça. Cada adreça ha de ser una adreça IP amb notació de prefix CIDR, per exemple, `192.168.1.1/24`.
- `neighbors`: una llista de veïns BGP segons l'estructura definida en els exercicis anteriors.

## Lliurament

Per a cada exercici:

1. Crea el document YAML corresponent.
2. Comprova que la sintaxi sigui correcta amb un validador YAML.
3. Desa els fitxers amb una extensió `.yaml` o `.yml`.
4. **Opcionalment**, crea la versió JSON de cada exercici, desa-la amb l'extensió `.json` i valida-la amb un validador JSON.
