---
title: "Tasca: Introducció a Javascript"
date: 2026-05-18 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, FP, Javascript, Programació, Tasca, Pràctica]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA2.

Com puc comprovar el codi Javascript? Llegir [Manual Rapid com testejar Javascript](/posts/manual-rapid-test-javascript/).
# Exercicis de JavaScript

Aquesta és una col·lecció d’exercicis de JavaScript pensada per a persones que estan començant a programar. Els exercicis t’ajudaran a practicar conceptes bàsics com:

- Variables i tipus de dades
- Operadors
- Condicionals (`if`, `else`)
- Bucles (`for`, `while`)
- Strings
- Arrays
- Funcions
- Objectes literals

Cada exercici inclou exemples d’entrada i sortida perquè puguis comprovar fàcilment si la teva solució funciona correctament.

---

# 1. Contrasenya vàlida

Escriu una funció anomenada `contrasenyaValida` que rebi una contrasenya (string).

La funció ha de retornar:

- `true` si la contrasenya és exactament `"2Fj(jjbFsuj"` o `"eoZiugBf&g9"`
- `false` en qualsevol altre cas

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(contrasenyaValida("2Fj(jjbFsuj")) // true
console.log(contrasenyaValida("eoZiugBf&g9")) // true
console.log(contrasenyaValida("hola")) // false
console.log(contrasenyaValida("")) // false
```

---

# 2. Calcular impostos

Escriu una funció `calcularImpostos` que rebi:

1. L’edat d’una persona
2. Els seus ingressos

La funció ha de retornar:

- El `20%` dels ingressos si la persona té `18 anys o més` i ingressa `més de 1000`
- `0` en qualsevol altre cas

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(calcularImpostos(18, 1000)) // 0
console.log(calcularImpostos(40, 10000)) // 2000
console.log(calcularImpostos(17, 5000)) // 0
console.log(calcularImpostos(30, 500)) // 0
```

---

# 3. IMC

Escriu una funció `imc` que calculi l’Índex de Massa Corporal.

La funció rep:

1. El pes en quilograms
2. L’alçada en metres

La funció ha de retornar:

- `"Baix pes"` si l’IMC és menor que `18.5`
- `"Normal"` si està entre `18.5` i `24.9`
- `"Sobrepès"` si està entre `25` i `29.9`
- `"Obesitat"` si és `30` o superior

Formula de l’IMC:

`IMC = pes / (alçada * alçada)`

```javascript
// escriu la funció imc aquí

// codi de prova
console.log(imc(65, 1.8)) // "Normal"
console.log(imc(72, 1.6)) // "Sobrepès"
console.log(imc(52, 1.75)) // "Baix pes"
console.log(imc(135, 1.7)) // "Obesitat"
```

---

# 4. Imprimir un array

Escriu una funció `imprimirArray` que rebi un array i imprimeixi cada element en una línia diferent utilitzant `console.log`.

```javascript
// escriu la teva resposta aquí

// codi de prova
imprimirArray([1, "Hola", 2, "Món"])

// 1
// Hola
// 2
// Món
```

---

# 5. Nombre de Likes

Les xarxes socials sovint mostren els likes abreujats.

Escriu una funció `likes` que rebi un número i retorni:

- El número normal si és menor de `1000`
- El número acabat en `"K"` si és de milers
- El número acabat en `"M"` si és de milions

No mostris decimals.

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(likes(983)) // "983"
console.log(likes(1900)) // "1K"
console.log(likes(54000)) // "54K"
console.log(likes(120800)) // "120K"
console.log(likes(25222444)) // "25M"
```

---

# 6. FizzBuzz

Escriu una funció `fizzBuzz` que:

- Retorni `"fizz"` si el número és múltiple de `3`
- Retorni `"buzz"` si és múltiple de `5`
- Retorni `"fizzbuzz"` si és múltiple de `3` i `5`
- Retorni el mateix número en qualsevol altre cas

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(fizzBuzz(6)) // "fizz"
console.log(fizzBuzz(20)) // "buzz"
console.log(fizzBuzz(30)) // "fizzbuzz"
console.log(fizzBuzz(8)) // 8
```

---

# 7. Comptar rang de nombres

Escriu una funció `comptarRang` que rebi dos números.

La funció ha de retornar quants números hi ha entre ells, sense comptar els extrems.

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(comptarRang(1, 9)) // 7
console.log(comptarRang(1332, 8743)) // 7410
console.log(comptarRang(5, 6)) // 0
```

---

# 8. Sumar rang

Escriu una funció `sumarRang` que sumi tots els números entre dos valors, inclosos els extrems.

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(sumarRang(0, 10)) // 55
console.log(sumarRang(12, 14)) // 39
console.log(sumarRang(5, 5)) // 5
```

---

# 9. Nombre de lletres "a"

Escriu una funció `numeroDeAs` que compti quantes vegades apareix la lletra `"a"` dins d’un string.

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(numeroDeAs("abracadabra")) // 5
console.log(numeroDeAs("etinol")) // 0
console.log(numeroDeAs("")) // 0
```

---

# 10. Nombre de caràcters

Escriu una funció `numeroDeCaracters` que rebi:

1. Un string
2. Un caràcter

La funció ha de retornar quantes vegades apareix aquest caràcter dins del string.

```javascript
// escriu la teva resposta aquí

// codi de prova
console.log(numeroDeCaracters("Hola Món", "o")) // 2
console.log(numeroDeCaracters("MMMMM", "m")) // 0
console.log(numeroDeCaracters("eeee", "e")) // 4
```

---

# 11. Sumar array

Escriu una funció `sumarArray` que retorni la suma de tots els números d’un array.

Si l’array és buit, ha de retornar `0`.

```javascript
console.log(sumarArray([3, 1, 2])) // 6
console.log(sumarArray([1,2,3,4,5,6,7,8,9,10])) // 55
console.log(sumarArray([])) // 0
```

---

# 12. Multiplicar array

Escriu una funció `multiplicarArray` que multipliqui tots els números d’un array.

Si l’array és buit, ha de retornar `1`.

```javascript
console.log(multiplicarArray([4,1,2,3])) // 24
console.log(multiplicarArray([1,2,3,4,5,6,7,8])) // 40320
console.log(multiplicarArray([])) // 1
```

---

# 13. Eliminar zeros

Escriu una funció `eliminarZeros` que retorni un nou array sense els zeros.

```javascript
console.log(eliminarZeros([0,1,0,2,0,3])) // [1,2,3]
console.log(eliminarZeros([9,3,6,4])) // [9,3,6,4]
console.log(eliminarZeros([0,0,0])) // []
```

---

# 14. Sumar array dins un rang

Escriu una funció `sumarArray` que rebi:

1. Un array
2. Una posició inicial
3. Una posició final

La funció ha de sumar només els elements dins d’aquest rang.

```javascript
console.log(sumarArray([1,2,3], 1, 2)) // 5
console.log(sumarArray([1,2,3,4,5,6,7,8,9,10], 3, 6)) // 22
console.log(sumarArray([7,8,9], 0, 0)) // 7
```

---

# 15. Transcriure ADN a ARN

Escriu una funció `transcriure` que converteixi una cadena d’ADN en ARN.

Utilitza aquestes equivalències:

- `A → U`
- `C → G`
- `G → C`
- `T → A`

```javascript
console.log(transcriure("ACGT")) // "UGCA"
console.log(transcriure("ACGTGGTCTTAA")) // "UGCACCAGAAUU"
```

---

# 16. Capitalitzar paraula

Escriu una funció `capitalitzar` que converteixi la primera lletra d’un string en majúscula.

```javascript
console.log(capitalitzar("pere")) // "Pere"
console.log(capitalitzar("hola món")) // "Hola món"
console.log(capitalitzar("")) // ""
```

---

# 17. Capitalitzar cada paraula

Escriu una funció `capitalitzar` que converteixi en majúscula la primera lletra de cada paraula d’un string.

```javascript
console.log(capitalitzar("hola món")) // "Hola Món"
console.log(capitalitzar("make it real")) // "Make It Real"
console.log(capitalitzar("")) // ""
```

---

# 18. Trobar el màxim

Escriu una funció `max` que retorni el número més gran d’un array.

```javascript
console.log(max([3, 9, 6])) // 9
console.log(max([67, 35, 54, 26])) // 67
console.log(max([5, 9, 2, 4, 5, 7])) // 9
```

---

# 19. Trobar el mínim

Escriu una funció `min` que retorni el número més petit d’un array.

```javascript
console.log(min([3, 9, 6])) // 3
console.log(min([67, 35, 54, 26])) // 26
console.log(min([5, 9, 2, 4, 5, 7])) // 2
```

---

# 20. Generar contrasenya

Escriu una funció `password` que substitueixi certes lletres per números:

- `a → 4`
- `e → 3`
- `i → 1`
- `o → 0`

```javascript
console.log(password("hola")) // "h0l4"
console.log(password("això és una prova"))
console.log(password(""))
```

---

# 21. Trobar parells

Escriu una funció `parells` que retorni només els números parells d’un array.

```javascript
console.log(parells([1,2,3,4,5,6])) // [2,4,6]
console.log(parells([])) // []
```

---

# 22. Posicions de parells

Escriu una funció `posicions` que retorni les posicions dels números parells dins d’un array.

```javascript
console.log(posicions([1,2,3,4,5,6])) // [1,3,5]
console.log(posicions([])) // []
```

---

# 23. Duplicar

Escriu una funció `duplicar` que retorni un nou array amb tots els números multiplicats per `2`.

```javascript
console.log(duplicar([1,2,3])) // [2,4,6]
console.log(duplicar([])) // []
```

---

# 24. Paraules que comencen per A

Escriu una funció `comencenAmbA` que retorni només les paraules que comencen per `"a"` o `"A"`.

```javascript
console.log(comencenAmbA(["beta","alfa","Arbre","gamma"]))
// ["alfa","Arbre"]
```

---

# 25. Paraules que acaben amb S

Escriu una funció `acabenAmbS` que retorni només les paraules que acaben amb `"s"`.

```javascript
console.log(acabenAmbS(["proves", "arròs", "arbre", "tokens"]))
// ["proves", "tokens"]
```

---

# 26. Imprimir una matriu

Escriu una funció `imprimirMatriu` que imprimeixi tots els elements d’una matriu un per línia.

```javascript
imprimirMatriu([
  [1,2,3],
  [4,5,6],
  [7,8,9]
])

// 1
// 2
// 3
// 4
// 5
// 6
// 7
// 8
// 9
```

---

# 27. Nombres a paraules

Escriu una funció `numerosAParaules` que transformi números del `0` al `9` en paraules.

```javascript
console.log(numerosAParaules([0,1,2,3,4]))
// ["zero","u","dos","tres","quatre"]

console.log(numerosAParaules([5,6,7,8,9]))
// ["cinc","sis","set","vuit","nou"]
```

---

# 28. Paraules a nombres

Escriu una funció `paraulesANumeros` que transformi paraules en números.

Si la paraula no existeix, retorna `-1`.

```javascript
console.log(paraulesANumeros(["zero","u","dos","tres","què?","quatre"]))
// [0,1,2,3,-1,4]
```

---

# 29. Nombre d’asteriscs en un array

Escriu una funció `numAsteriscs` que compti quants `"*"` hi ha dins d’un array.

```javascript
console.log(numAsteriscs(['', '*', '', '*'])) // 2
console.log(numAsteriscs(['*', '*', '*'])) // 3
console.log(numAsteriscs([])) // 0
```

---

# 30. Nombre d’asteriscs en una matriu

Escriu una funció `numAsteriscs` que compti quants `"*"` hi ha dins d’una matriu.

```javascript
console.log(numAsteriscs([
  ['*', '', '*'],
  ['', '*', ''],
  ['*', '', '*']
]))
// 5
```

---

# 31. Distància entre dos strings

Escriu una funció `distancia` que compari dos strings de la mateixa longitud.

La funció ha de retornar quants caràcters són diferents entre els dos strings.

```javascript
console.log(distancia("hola", "hola")) // 0
console.log(distancia("sol", "tol")) // 1
console.log(distancia("cotxe", "córrer")) // 3
```