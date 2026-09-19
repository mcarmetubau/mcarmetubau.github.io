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

L'objectiu d'aquesta pràctica és **aprendre a treballar de manera col·laborativa amb Git i GitHub**, utilitzant el sistema de **Pull Requests**.

Durant la pràctica es treballarà el procés complet de creació d'una branca, realització de canvis, creació de commits, pujada dels canvis al repositori remot i creació d'un Pull Request.

També es practicarà la **revisió i acceptació de Pull Requests**, la sincronització d'un repositori amb els canvis dels companys i el treball col·laboratiu en un mateix projecte.


---
# Exercici — Pull Request amb GitHub

## Recursos

**Article:** [Com col·laborar en un projecte de programari lliure? Què és un Pull Request?](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/)

**Repositori de l'exercici:**
https://github.com/mcarmetubau/Practiques26-27.git

---

## Què és un Pull Request?

Un **Pull Request (PR)** és una petició que es fa al propietari d'un repositori perquè incorpori els canvis proposats en una branca al repositori original.

En aquest exercici hauràs de crear un Pull Request sobre el repositori:

**https://github.com/mcarmetubau/Practiques26-27.git**

L'objectiu és practicar el flux de treball col·laboratiu amb **Git i GitHub**.

---

# Què has de fer?

## 1. Realitzar un Pull Request

Has de realitzar un Pull Request al repositori indicat anteriorment per sol·licitar **dos canvis**.

### 1.1. Modificar el fitxer `README.md`

Has de modificar el fitxer `README.md` per afegir un enllaç a la llista.

L'enllaç ha de:

* Mostrar les teves inicials.
* Apuntar al fitxer Markdown que crearàs dins del directori `files`.

Per exemple, si les teves inicials són `mct`:

```md
- [MCT](files/mct.md)
```

### 1.2. Crear un fitxer dins de `files`

Crea un fitxer dins del directori `files` amb el nom:

```text
teves_inicials.md
```

Per exemple:

```text
files/mct.md
```

Dins d'aquest fitxer hauràs d'escriure en **Markdown** la resposta a la pregunta:

> **Quina assignatura t'agrada més? I per què?**

Pots utilitzar diferents elements de Markdown, com ara:

* Títols
* Paràgrafs
* Llistes
* **Negreta**
* *Cursiva*
* [Enllaços](https://www.example.com)
* Imatges, si ho consideres necessari

---

## 2. Crear el Pull Request

Quan hagis fet els canvis:

1. Crea una branca nova per treballar.
2. Modifica el `README.md`.
3. Crea el teu fitxer dins del directori `files`.
4. Fes els commits necessaris.
5. Puja la branca al repositori remot.
6. Crea el Pull Request a GitHub.

El missatge del commit ha de ser **significatiu** i ha d'explicar breument què has fet.

Per exemple:

```bash
git commit -m "Afegeix fitxer personal i enllaç al README"
```

### Important

Una vegada creat el Pull Request, **espera que el professor l'accepti**.

No facis la fusió (`merge`) pel teu compte si el professor és qui ha d'acceptar el PR.

---

## 3. Sincronitzar el repositori

Una vegada finalitzat l'exercici i quan el professor ho indiqui, has de sincronitzar el teu repositori.

L'objectiu és que el teu repositori tingui els fitxers i els canvis realitzats pels teus companys.

Pots actualitzar el repositori local amb:

```bash
git checkout main
git pull
```

Comprova que tens els canvis i els fitxers dels teus companys.

---

## 4. Fer un Pull Request sobre el repositori d'un company

Tria un company i fes un **Pull Request sobre el seu repositori**.

El teu company haurà de revisar i acceptar el teu Pull Request.

Al mateix temps, **un company haurà de fer un Pull Request sobre el teu repositori**.

Per tant, al final de l'activitat:

```text
Tu
 │
 ├──> Pull Request ──> Repositori del company
 │
 │
 └──< Pull Request <── Repositori del company
```

---

# Flux de treball recomanat

El procés complet pot ser:

```text
1. Clonar el repositori
        ↓
2. Crear una branca
        ↓
3. Modificar README.md
        ↓
4. Crear el fitxer files/teves_inicials.md
        ↓
5. Fer commit
        ↓
6. Fer push
        ↓
7. Crear Pull Request
        ↓
8. Esperar la revisió
        ↓
9. Pull Request acceptat
        ↓
10. Actualitzar el repositori
        ↓
11. Fer un PR sobre el repositori d'un company
        ↓
12. Acceptar el PR d'un company al teu repositori
```

---

# Què has de lliurar?

## 1. Passos fonamentals

Has d'explicar els **passos fonamentals, amb les instruccions corresponents**, per realitzar un Pull Request.

Per exemple:

```bash
git clone URL_DEL_REPOSITORI
git checkout -b nom-branca
git add .
git commit -m "Missatge significatiu"
git push -u origin nom-branca
```

Després hauràs de crear el Pull Request des de GitHub.

---

## 2. Actualitzar el repositori remot

Quan **tots els alumnes hagin enviat els seus Pull Requests** i el professor ho indiqui:

1. Actualitza el teu repositori.
2. Comprova que tens els canvis de tots els companys.
3. Envia al professor la **URL del teu repositori** perquè pugui comprovar-lo.

Per actualitzar el repositori local:

```bash
git checkout main
git pull
```

Comprova que els fitxers dels teus companys estan disponibles.

---

## 3. Captura de pantalla

Has de lliurar una **captura de pantalla** on es vegi que has acceptat el Pull Request que ha realitzat un company sobre el teu repositori.

La captura ha de permetre comprovar:

* El Pull Request del company.
* Que ha estat acceptat/fusionat.
* El repositori on s'ha realitzat l'operació.

---

# Resum de lliurables

* [ ] Explicació dels passos fonamentals per fer un Pull Request.
* [ ] Instruccions/comandes Git utilitzades.
* [ ] Modificació del `README.md`.
* [ ] Enllaç amb les teves inicials al `README.md`.
* [ ] Fitxer `files/teves_inicials.md`.
* [ ] Resposta en Markdown a la pregunta «Quina assignatura t'agrada més? I per què?».
* [ ] Pull Request creat sobre el repositori del professor.
* [ ] Pull Request acceptat pel professor.
* [ ] Repositori actualitzat amb els fitxers dels companys.
* [ ] URL del teu repositori remot.
* [ ] Pull Request realitzat sobre el repositori d'un company.
* [ ] Pull Request d'un company sobre el teu repositori.
* [ ] Captura de pantalla on es vegi que has acceptat el Pull Request del company.
