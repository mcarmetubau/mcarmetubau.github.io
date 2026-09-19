---
title: "Pràctica: Apunts desenvolupament WEB - GitHub"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web]
tags: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web, ASIX, FP, Github, Tasca, Pràctica]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb apte o no apte.

Durada activitats obligatòries: 45 minuts.

RA

> 📸 Recorda fer captures.
{:.prompt-info}


## Objectiu

Treballar amb branques (`branches`) en Git, crear i eliminar branques, fer modificacions independents, fusionar branques i resoldre conflictes.

Treballarem amb el repositori creat anteriorment.

---

## 1. Què és una branca?

Una branca representa una línia independent de desenvolupament. És com crear una nova àrea de treball que tindrà el seu propi historial de commits.

Les branques permeten treballar en diferents funcionalitats o canvis sense modificar directament la branca principal del projecte.

---

## 2. Llistar les branques locals

Per llistar les branques locals del repositori executa:

```bash
git branch
````

El resultat inicial serà similar a:

```
```

```
* main
```

La branca en què estàs treballant actualment s'assenyala amb un asterisc (`*`).

La branca `main` és la branca principal del projecte. En projectes antics també es pot trobar amb el nom `master`.

---

## 3. Crear una nova branca

Crea una nova branca amb la instrucció:

```
```

```
git branch [branca]
```

Per exemple:

```
```

```
git branch primera
```

Torna a llistar les branques:

```
```

```
git branch
```

Comprova que la branca `primera` s'ha creat, però que encara estàs situat a `main`.

---

## 4. Canviar de branca

Per passar a la nova branca utilitza:

```
```

```
git checkout [branca]
```

Per exemple:

```
```

```
git checkout primera
```

També pots utilitzar la comanda més moderna:

```
```

```
git switch primera
```

Comprova que ara estàs treballant a la branca `primera`:

```
```

```
git branch
```

### Comprovacions

-  Comprova que a la nova branca tens els mateixos fitxers que a la branca principal. 
-  Els canvis que facis als fitxers d'aquesta branca no es reflectiran a la branca `main` fins que facis una fusió (`merge`). 
-  També pots crear una branca i situar-t'hi directament amb: 

```
```

```
git checkout -b [branca]
```

o:

```
```

```
git switch -c [branca]
```

-  Amb la comanda següent pots veure el darrer commit de cada branca: 

```
```

```
git branch -v
```

Comprova que, abans de fer cap canvi, l'últim commit de les dues branques coincideix.

---

## 5. Fer canvis en una branca

A la branca `primera`, modifica algun fitxer existent o crea'n un de nou.

Per exemple:

```
```

```
touch fitxer-primera.txt
```

Afegeix el fitxer a l'àrea de preparació:

```
```

```
git add fitxer-primera.txt
```

Fes el commit:

```
```

```
git commit -m "Afegeix fitxer a la branca primera"
```

Comprova els commits de les branques:

```
```

```
git branch -v
```

Ara comprova que el fitxer o les modificacions realitzades a `primera` no apareixen a `main`:

```
```

```
git checkout main
```

Comprova el contingut del repositori i torna després a la branca `primera`:

```
```

```
git checkout primera
```

---

## 6. Pujar una branca a GitHub

Les branques creades localment no es creen automàticament al repositori remot de GitHub.

Per crear la branca al repositori remot, cal fer un `push`:

```
```

```
git push origin [branca]
```

Per exemple:

```
```

```
git push origin primera
```

`origin` és el nom habitual que Git assigna al repositori remot.

---

## 7. Eliminar una branca

És força habitual crear una branca, fer els canvis necessaris, fusionar-la amb la branca principal i, posteriorment, eliminar la branca que ja no necessitem.

Per eliminar una branca local podem executar:

```
```

```
git branch -d [branca]
```

Per exemple:

```
```

```
git branch -d primera
```

> **Important:** No eliminis la branca `primera` fins que ho indiqui l'apartat de lliurament de l'exercici.

---

## 8. Fusionar una branca amb `main`

Quan has treballat en una branca, normalment voldràs incorporar els seus canvis a la branca principal.

Primer, situa't a `main`:

```
```

```
git checkout main
```

A continuació, fes la fusió:

```
```

```
git merge [branca]
```

Per exemple:

```
```

```
git merge primera
```

També pots utilitzar:

```
```

```
git switch main
git merge primera
```

Quan només s'han afegit o eliminat fitxers en una branca, la fusió acostuma a ser senzilla.

Quan s'han modificat fitxers, Git intenta detectar els canvis i fusionar-los automàticament. En alguns casos poden aparèixer conflictes.

### Activitat

Realitza la fusió de la branca `primera` amb `main`.

**Pregunta:**

> S'ha produït algun conflicte? Explica per què.

---

# 9. Resolució de conflictes

Els conflictes apareixen quan Git no pot determinar automàticament quins canvis ha de conservar. Un cas habitual és quan el mateix fragment d'un fitxer s'ha modificat de manera diferent en dues branques.

Seguirem aquest exemple.

## 9.1. Crear el fitxer a `main`

Situa't a la branca principal:

```
```

```
git checkout main
```

Crea un fitxer anomenat `prova.txt`:

```
```

```
touch prova.txt
```

Edita el fitxer i afegeix:

```
```

```
Hola, com estàs?
```

Fes el commit:

```
```

```
git add prova.txt
git commit -m "Afegeix prova.txt"
```

---

## 9.2. Crear una nova branca

Crea una nova branca i situa-t'hi:

```
```

```
git checkout -b nou
```

Modifica el fitxer `prova.txt`. Per exemple, canvia el seu contingut a:

```
```

```
Hola, què tal?
```

Fes el commit:

```
```

```
git add prova.txt
git commit -m "Modifica prova.txt a la branca nou"
```

---

## 9.3. Modificar el mateix fitxer a `main`

Torna a la branca principal:

```
```

```
git checkout main
```

Modifica novament `prova.txt`, però amb un contingut diferent:

```
```

```
Hola, com va?
```

Fes el commit:

```
```

```
git add prova.txt
git commit -m "Modifica prova.txt a main"
```

---

## 9.4. Intentar fer la fusió

Ara intenta fusionar la branca `nou`:

```
```

```
git merge nou
```

Git pot mostrar un missatge similar a:

```
```

```
CONFLICT (content): Merge conflict in prova.txt
Automatic merge failed; fix conflicts and then commit the result.
```

El fitxer `prova.txt` contindrà marques de conflicte similars a:

```
```

```
<<<<<<< HEAD
Hola, com va?
=======
Hola, què tal?
>>>>>>> nou
```

Les marques tenen el significat següent:

- `<<<<<<< HEAD`: inici dels canvis que provenen de la branca actual (`main`). 
- `=======`: separació entre els dos continguts. 
- `>>>>>>> nou`: final dels canvis que provenen de la branca `nou`. 

És l'usuari qui ha de decidir quin contingut conservar o si vol combinar els dos canvis.

Després de solucionar manualment el conflicte, cal afegir el fitxer i fer un commit:

```
```

```
git add prova.txt
git commit -m "Resol conflicte de prova.txt"
```

---

# Què has de lliurar?

## 1. Crear la branca `primera`

Crea una branca anomenada `primera` al repositori local.

Executa la instrucció necessària per comprovar que s'ha creat correctament.

**Comandes orientatives:**

```
```

```
git branch primera
git branch
```

Inclou una captura de pantalla on es pugui veure la branca creada.

---

## 2. Crear un fitxer i fusionar-lo

A la branca `primera`:

1.  Crea un fitxer nou. 
2.  Fes el commit corresponent. 
3.  Torna a `main`. 
4.  Fusiona la branca `primera` amb `main`. 

**Pregunta:**

> S'ha produït un conflicte? Raona la resposta.

Inclou les comandes utilitzades i una explicació breu.

---

## 3. Eliminar la branca `primera`

Un cop feta la fusió, elimina la branca:

```
```

```
git branch -d primera
```

Comprova que s'ha eliminat:

```
```

```
git branch
```

Inclou una captura de pantalla on es pugui comprovar.

---

## 4. Crear la branca `segona` i provocar un conflicte

Crea una branca anomenada `segona`:

```
```

```
git checkout -b segona
```

Modifica un fitxer existent de manera que, posteriorment, es produeixi un conflicte amb `main`.

Fes el commit dels canvis:

```
```

```
git add .
git commit -m "Modificacions a la branca segona"
```

Torna a `main`:

```
```

```
git checkout main
```

Modifica el mateix fitxer en una zona que entri en conflicte amb els canvis de `segona`.

Fes el commit:

```
```

```
git add .
git commit -m "Modificacions a main"
```

Finalment, intenta fusionar:

```
```

```
git merge segona
```

### Lliurament

Entrega el contingut del fitxer on s'ha produït el conflicte, mostrant les marques de conflicte:

```
```

```
<<<<<<< HEAD
Contingut de main
=======
Contingut de segona
>>>>>>> segona
```

---

## 5. Resoldre el conflicte i sincronitzar amb GitHub

Resol manualment el conflicte del punt anterior.

Elimina les marques:

```
```

```
<<<<<<< HEAD
=======
>>>>>>> segona
```

i deixa el fitxer amb el contingut final que hagis decidit conservar.

A continuació:

```
```

```
git add .
git commit -m "Resol conflicte entre main i segona"
```

Sincronitza la branca `segona` amb el repositori remot:

```
```

```
git push origin segona
```

### Lliurament

Entrega una **captura de pantalla de GitHub** on es pugui comprovar que la branca `segona` s'ha creat correctament al repositori remot.

---

# Resum de les comandes principals

| AccióComanda                        |                            |
| ----------------------------------- | -------------------------- |
| Llistar branques                    | `git branch`               |
| Crear una branca                    | `git branch nom`           |
| Crear i canviar de branca           | `git checkout -b nom`      |
| Canviar de branca                   | `git checkout nom`         |
| Alternativa moderna                 | `git switch nom`           |
| Veure l'últim commit de cada branca | `git branch -v`            |
| Eliminar una branca                 | `git branch -d nom`        |
| Fusionar una branca                 | `git merge nom`            |
| Pujar una branca a GitHub           | `git push origin nom`      |
| Veure l'estat del repositori        | `git status`               |
| Afegir canvis                       | `git add .`                |
| Crear un commit                     | `git commit -m "Missatge"` |

---

# Lliurables finals

Has d'entregar:

-  Captura de la creació de la branca `primera`. 
-  Evidència de la fusió de `primera` amb `main`. 
-  Explicació de si s'ha produït conflicte en la primera fusió. 
-  Evidència de l'eliminació de la branca `primera`. 
-  Branca `segona` creada. 
-  Contingut del fitxer amb el conflicte. 
-  Conflicte resolt. 
-  Commit amb la resolució del conflicte. 
-  Branca `segona` sincronitzada amb GitHub. 
-  Captura de pantalla de GitHub on es vegi la branca `segona`. 

