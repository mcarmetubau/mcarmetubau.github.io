---
title: "Pràctica: Pull Request amb GitHub"
date: 2026-09-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web]
tags: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web, ASIX, FP, Github, Tasca, Pràctica, fork,Pull Request]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb apte o no apte.

Durada activitats obligatòries: 45 minuts.

RA

> 📸 Recorda fer captures.
{:.prompt-info}

## Objectiu de la pràctica

L'objectiu d'aquesta pràctica és **aprendre a treballar de manera
col·laborativa amb Git i GitHub**, utilitzant el sistema de **Forks i
Pull Requests**.

Durant la pràctica es treballarà el procés complet de:

-   Fer un **Fork** d'un repositori.
-   Clonar el Fork al repositori local.
-   Fer canvis directament sobre la branca `main`.
-   Crear commits.
-   Pujar els canvis al Fork remot.
-   Crear un Pull Request cap al repositori original.
-   Revisar i acceptar Pull Requests.
-   Sincronitzar el Fork amb el repositori original.
-   Fer un Pull Request sobre el repositori d'un company.

------------------------------------------------------------------------

# Recursos

**Article:** [Com col·laborar en un projecte de programari lliure? Què
és un Pull
Request?](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/)

**Repositori original de l'exercici:**

https://github.com/mcarmetubau/Practiques26-27.git

------------------------------------------------------------------------

# Què és un Fork?

Un **Fork** és una còpia d'un repositori d'un altre usuari dins del teu
propi compte de GitHub.

El Fork permet treballar sobre una còpia del projecte sense tenir
permisos d'escriptura sobre el repositori original.

En aquesta pràctica hauràs de fer un Fork del repositori:

**https://github.com/mcarmetubau/Practiques26-27.git**

El flux de treball serà:

``` text
Repositori original
        │
        │ Fork
        ↓
El teu repositori a GitHub
        │
        │ clone
        ↓
Repositori local
        │
        │ canvis + commit
        ↓
El teu Fork a GitHub
        │
        │ Pull Request
        ↓
Repositori original
```

------------------------------------------------------------------------

# Què has de fer?

## 1. Fer un Fork del repositori

Accedeix al repositori:

**https://github.com/mcarmetubau/Practiques26-27.git**

A GitHub:

1.  Prem el botó **Fork**.
2.  Selecciona el teu compte personal.
3.  GitHub crearà una còpia del repositori al teu compte.

A partir d'aquest moment treballaràs sobre **el teu Fork**.

------------------------------------------------------------------------

## 2. Clonar el Fork

Clona el teu repositori, no el repositori original.

Per exemple:

``` bash
git clone URL_DEL_TEU_FORK
cd Practiques26-27
```

Comprova els repositoris remots:

``` bash
git remote -v
```

El repositori `origin` hauria de ser el teu Fork.

------------------------------------------------------------------------

# 3. Realitzar els canvis


Comprova que estàs a `main`:

``` bash
git checkout main
```

### 3.1. Modificar el fitxer `README.md`

Modifica el fitxer `README.md` per afegir un enllaç a la llista.

L'enllaç ha de:

-   Mostrar les teves inicials.
-   Apuntar al fitxer Markdown que crearàs dins del directori `files`.

Per exemple, si les teves inicials són `mct`:

``` md
- [MCT](files/mct.md)
```

### 3.2. Crear un fitxer dins de `files`

Crea un fitxer dins del directori `files` amb el nom:

``` text
teves_inicials.md
```

Per exemple:

``` text
files/mct.md
```

Dins d'aquest fitxer hauràs d'escriure en **Markdown** la resposta a la
pregunta:

> **Quina assignatura t'agrada més? I per què?**

Pots utilitzar diferents elements de Markdown, com ara:

-   Títols
-   Paràgrafs
-   Llistes
-   **Negreta**
-   *Cursiva*
-   [Enllaços](https://www.example.com)
-   Imatges, si ho consideres necessari

------------------------------------------------------------------------

# 4. Crear el commit

Comprova els canvis:

``` bash
git status
```

Afegeix els fitxers:

``` bash
git add README.md files/teves_inicials.md
```

Crea el commit:

``` bash
git commit -m "Afegeix fitxer personal i enllaç al README"
```

El missatge del commit ha de ser **significatiu** i explicar breument
què has fet.

També pots comprovar el commit amb:

``` bash
git log --oneline
```

------------------------------------------------------------------------

# 5. Pujar els canvis al teu Fork

Com que estàs treballant sobre `main`:

``` bash
git push origin main
```

Ara els canvis haurien d'aparèixer al teu Fork de GitHub.

------------------------------------------------------------------------

# 6. Crear el Pull Request

Des de GitHub, entra al teu Fork.

GitHub hauria de mostrar l'opció per crear un **Pull Request** amb els
canvis que acabes de pujar.

El Pull Request ha de tenir:

``` text
Base repository:
mcarmetubau/Practiques26-27

Base branch:
main

Head repository:
EL_TEU_USUARI/Practiques26-27

Head branch:
main
```

Per tant, el Pull Request serà:

``` text
El teu Fork (main)
       │
       │ Pull Request
       ↓
Repositori original (main)
```

Escriu un títol i una descripció clars i crea el Pull Request.

### Important

Una vegada creat el Pull Request, **espera que el professor l'accepti**.

No facis la fusió (`merge`) pel teu compte si és el professor qui ha
d'acceptar el PR.

------------------------------------------------------------------------

# 7. Sincronitzar el teu Fork

Una vegada que el professor hagi acceptat els Pull Requests i ho
indiqui, hauràs de sincronitzar el teu Fork amb el repositori original.

Primer comprova els repositoris remots:

``` bash
git remote -v
```

Si encara no tens configurat el repositori original (el del professor) com a `upstream`,
afegeix-lo:

``` bash
git remote add upstream https://github.com/mcarmetubau/Practiques26-27.git
```

Comprova que s'ha afegit:

``` bash
git remote -v
```

Hauries de tenir:

``` text
origin    → el teu Fork
upstream  → repositori original
```
```


Actualitza la informació del repositori original:

``` bash
git pull upstream main
```

Canvia a `main`:

``` bash
git checkout main
```

Actualitza la teva branca `main` amb els canvis del repositori original:

``` bash
git merge upstream/main
```

Finalment, puja els canvis actualitzats al teu Fork:

``` bash
git push origin main
```

Ara el teu Fork hauria d'estar sincronitzat amb el repositori original.

Comprova que tens els fitxers i els canvis realitzats pels teus
companys.

------------------------------------------------------------------------

# 8. Fer un Pull Request sobre el repositori d'un company

Tria un company i fes un **Pull Request sobre el seu repositori**.

Per fer-ho:

1.  Accedeix al repositori del company.
2.  Fes un **Fork** del seu repositori.
3.  Clona el teu Fork.
4.  Fes el canvi que hàgiu acordat amb el company.
5.  Fes el commit corresponent.
6.  Puja el canvi a `main` del teu Fork.
7.  Crea un Pull Request des del teu Fork cap al repositori del company.
8.  El company haurà de revisar i acceptar el teu Pull Request.


Al mateix temps, **un company haurà de fer un Pull Request sobre el teu
repositori**.

Per tant, al final de l'activitat:

``` text
Tu
 │
 ├──> Pull Request ──> Repositori del company
 │
 │
 └──< Pull Request <── Repositori del company
```

------------------------------------------------------------------------

# Flux de treball complet

El procés complet serà:

``` text
1. Fer Fork del repositori del professor
        ↓
2. Clonar el teu Fork
        ↓
3. Treballar sobre main
        ↓
4. Modificar README.md
        ↓
5. Crear files/teves_inicials.md
        ↓
6. Fer commit
        ↓
7. Fer push a origin main
        ↓
8. Crear Pull Request cap al repositori original
        ↓
9. Esperar la revisió i acceptació del professor
        ↓
10. Configurar upstream
        ↓
11. Sincronitzar main amb upstream/main
        ↓
12. Fer push del main actualitzat al teu Fork
        ↓
13. Fer un Fork del repositori d'un company
        ↓
14. Fer un canvi i un commit
        ↓
15. Fer push a main
        ↓
16. Crear un Pull Request cap al repositori del company
        ↓
17. Un company fa un Pull Request sobre el teu repositori
        ↓
18. Acceptar el Pull Request del company
```

------------------------------------------------------------------------

