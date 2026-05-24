---
title: "Manual ràpid: Com provar el codi Javascript"
date: 2026-05-18 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, FP, Javascript, Programació, Manual]
---

# Manual ràpid per provar JavaScript  
## Exercici: `contrasenaValida`

---

## Enunciat

Escriu una funció anomenada **`contrasenaValida`** que rebi un string i retorni `true` si el string és igual a:

- `"2Fj(jjbFsuj"`
- `"eoZiugBf&g9"`

En qualsevol altre cas ha de retornar `false`.

### Codi de prova:

console.log(contrasenaValida("2Fj(jjbFsuj")) // true  
console.log(contrasenaValida("eoZiugBf&g9")) // true  
console.log(contrasenaValida("hola")) // false  
console.log(contrasenaValida("")) // false  

---

## Solució JavaScript

function contrasenaValida(text) {  
  return text === "2Fj(jjbFsuj" || text === "eoZiugBf&g9";  
}

console.log(contrasenaValida("2Fj(jjbFsuj")) // true  
console.log(contrasenaValida("eoZiugBf&g9")) // true  
console.log(contrasenaValida("hola")) // false  
console.log(contrasenaValida("")) // false  

---
#Possibles configuracions per provar el codi

## 1. Plantilla HTML per provar-ho al navegador

Crea un fitxer `index.html`, enganxa aquest contingut i obre’l amb el navegador.  
Obre la consola (F12 → “Console”) per veure els resultats.

<!DOCTYPE html>  
<html lang="ca">  
<head>  
  <meta charset="UTF-8" />  
  <title>Prova JavaScript – contrasenaValida</title>  
</head>  
<body>  
  <h1>Prova de la funció <code>contrasenaValida</code></h1>  
  <p>Obre la consola del navegador per veure els resultats.</p>

  <script>
    function contrasenaValida(text) {
      return text === "2Fj(jjbFsuj" || text === "eoZiugBf&g9";
    }

    console.log(contrasenaValida("2Fj(jjbFsuj")) // true
    console.log(contrasenaValida("eoZiugBf&g9")) // true
    console.log(contrasenaValida("hola")) // false
    console.log(contrasenaValida("")) // false
  </script>
</body>
</html>

---

## 2. Provar el codi directament a la consola del navegador

1. Obre qualsevol pàgina web.  
2. Prem **F12** o **Ctrl+Shift+I**.  
3. Ves a la pestanya **Console**.  
4. Enganxa:

function contrasenaValida(text) {  
  return text === "2Fj(jjbFsuj" || text === "eoZiugBf&g9";  
}

console.log(contrasenaValida("2Fj(jjbFsuj")) // true  
console.log(contrasenaValida("eoZiugBf&g9")) // true  
console.log(contrasenaValida("hola")) // false  
console.log(contrasenaValida("")) // false  

---


## 3. Revisar el codi online (sense instal·lar res)

Pots enganxar **tot aquest bloc únic** en qualsevol d’aquests editors:

### 🔹 JSFiddle  
https://jsfiddle.net  
- Enganxa el codi a la pestanya **JavaScript**  
- Clica **Run**  
- Obre la consola del navegador

### 🔹 CodePen  
https://codepen.io/pen  
- Enganxa el codi a la secció **JS**  
- Obre la consola del navegador

### 🔹 PlayCode (molt recomanat)  
https://playcode.io  
- Enganxa el codi al panell de JavaScript  
- La consola surt integrada

### 🔹 Replit  
https://replit.com  
- Crea un projecte HTML/JS  
- Enganxa el codi  
- Executa i mira la consola 
