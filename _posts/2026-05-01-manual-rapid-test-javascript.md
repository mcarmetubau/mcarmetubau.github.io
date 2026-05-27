---
title: "Manual ràpid: Com provar el codi Javascript"
date: 2026-05-18 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques, ASIX, FP, Javascript, Programació, Manual]
---


## Suposit - Enunciat

Escriu una funció anomenada **`contrasenyaValida`** que rebi un string i retorni `true` si el string és igual a:

- `"2Fj(jjbFsuj"`
- `"eoZiugBf&g9"`

En qualsevol altre cas ha de retornar `false`.

### Codi de prova:

console.log(contrasenyaValida("2Fj(jjbFsuj")) // true  
console.log(contrasenyaValida("eoZiugBf&g9")) // true  
console.log(contrasenyaValida("hola")) // false  
console.log(contrasenyaValida("")) // false  

---

## Solució JavaScript

function contrasenyaValida(text) {   
  return text === "2Fj(jjbFsuj" || text === "eoZiugBf&g9";  
}

console.log(contrasenyaValida("2Fj(jjbFsuj")) // true  
console.log(contrasenyaValida("eoZiugBf&g9")) // true  
console.log(contrasenyaValida("hola")) // false  
console.log(contrasenyaValida("")) // false  

---
#Possibles configuracions per provar el codi

## 1. Plantilla HTML per provar-ho al navegador

Crea un fitxer `index.html`, enganxa aquest contingut i obre’l amb el navegador.  
Obre la consola (F12 → “Console”) per veure els resultats.
```html  
<!DOCTYPE html>  
<html lang="ca">  
<head>  
  <meta charset="UTF-8" />  
  <title>Prova JavaScript – contrasenyaValida</title>  
</head>  
<body>  
  <h1>Prova de la funció <code>contrasenyaValida</code></h1>  
  <p>Obre la consola del navegador per veure els resultats.</p>

  <script>
    function contrasenyaValida(text) {
      return text === "2Fj(jjbFsuj" || text === "eoZiugBf&g9";
    }

    console.log(contrasenyaValida("2Fj(jjbFsuj")) // true
    console.log(contrasenyaValida("eoZiugBf&g9")) // true
    console.log(contrasenyaValida("hola")) // false
    console.log(contrasenyaValida("")) // false
  </script>
</body>
</html>
 ```
---

## 2. Revisar el codi online (sense instal·lar res)

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
