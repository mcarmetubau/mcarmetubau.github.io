---
title: "Apunts desenvolupament WEB - GitHub"
date: 2026-05-17 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Desenvolupament Web]
tags: [Administració de Sistemes Informàtics en Xarxa, Desenvolupament Web, ASIX, FP, Github, Material]
---

# Taller d’introducció a `git` i GitHub

En aquest taller d’introducció a `git` i [GitHub][1] aprendrem les ordres bàsiques per començar a treballar amb repositoris de manera local i remota.

## Índex

1. [`git`](#git)
   1. [Instal·lació i configuració de `git`](#instal·lació-i-configuració-de-git)
   2. [Seccions principals d’un repositori `git`](#seccions-principals-dun-repositori-git)
   3. [Estats d’un fitxer a `git`](#estats-dun-fitxer-a-git)
   4. [Com treballar amb un repositori local](#com-treballar-amb-un-repositori-local)
   5. [Com desfer canvis](#com-desfer-canvis)
   6. [Esborrant i movent/reanomenant fitxers](#esborrant-i-moventreanomenant-fitxers)
   7. [Com treballar amb un repositori remot](#com-treballar-amb-un-repositori-remot)
   8. [Branches](#branches)
   9. [Com treballar en equip amb `git`](#com-treballar-en-equip-amb-git)
   10. [El fitxer `.gitignore`](#el-fitxer-gitignore)
   11. [Consultar l’historial de *commits*](#consultar-lhistorial-de-commits)
2. [GitHub](#github)

# `git`

## Instal·lació i configuració de `git`

### Instal·lació de `git`

#### Ubuntu

```bash
sudo apt-get update
sudo apt-get install git
```

#### Windows

Descarregar des del web oficial:

http://git-scm.com/downloads

### Configuració de `git`

Configurem el nom i el correu electrònic que apareixeran als *commits*.

```bash
git config --global user.name "Nom"
```

```bash
git config --global user.email "correu@electronic.com"
```

Per comprovar la configuració actual:

```bash
git config --list
```

## Seccions principals d’un repositori `git`

En un repositori `git` podem diferenciar les seccions següents:

- *Workspace*
- *Staging Area (Index)*
- *Local Repository*
- *Remote Repository*

![Figura 1](images/img-00.png)

*Figura 1: Imatge d’Oliver Steele.*

## Estats d’un fitxer a `git`

Un fitxer pot estar en algun dels estats següents:

- Sense seguiment (*untracked*)
- Preparat (*staged*)
- Modificat (*modified*)
- Confirmat (*committed*)

```text
+-------------+  +-------------+  +-------------+
|  Workspace  |  |   Staging   |  |    Local    |
|             |  |     Area    |  | Repository  |
+------+------+  +------+------+  +------+------+
       |                |                |
   Untracked            |                |
       |                |                |
   Modified          Staged         Committed
       |                |                |
       +                +                +
```

Per consultar l’estat dels fitxers:

```bash
git status
```

## Com treballar amb un repositori local

### Crear un repositori local

```bash
git init
```

Exemple:

```bash
mkdir taller-git
cd taller-git
git init
```

### Flux de treball bàsic

#### Pas 1: Consultar l’estat

```bash
git status
```

#### Pas 2: Afegir fitxers

```bash
git add <nom_fitxer>
```

Afegir tots els fitxers:

```bash
git add -A
```

#### Pas 3: Fer un commit

```bash
git commit -m "Breu comentari amb els canvis realitzats"
```

## Com desfer canvis

### Modificar el text de l’últim commit

```bash
git commit -m "Modifico el text de l’últim commit" --amend
```

### Afegir fitxers a l’últim commit

```bash
git commit --amend
```

Exemple:

```bash
git add fitxer.txt
git commit -m "Afegim fitxer.txt"
git add fitxer_oblidat.txt
git commit --amend
```

### Treure un fitxer de la *staging area*

```bash
git reset HEAD <fitxer>
```

### Desfer canvis al *workspace*

```bash
git checkout -- <fitxer>
```

## Esborrant i movent/reanomenant fitxers

### Esborrar un fitxer

```bash
git rm <fitxer>
```

Exemple:

```bash
git rm fitxer.txt
git commit -m "S'elimina fitxer.txt"
```

### Moure o reanomenar fitxers

```bash
git mv <fitxer> <nou_nom>
```

Exemple:

```bash
git mv fitxer.txt nou_nom.txt
git commit -m "Es reanomena fitxer.txt a nou_nom.txt"
```

## Com treballar amb un repositori remot

### Opció 1: Clonar un repositori remot

```bash
git clone <url_del_repositori_remot>
```

Exemple:

```bash
git clone https://github.com/josejuansanchez/taller-git-github.git
```

### Opció 2: Afegir un repositori remot

```bash
git remote add <àlies> <url_del_repositori_remot>
```

Exemple:

```bash
git remote add taller-git https://github.com/josejuansanchez/taller-git-github.git
```

Comprovar repositoris remots:

```bash
git remote -v
```

### Enviar canvis amb `push`

```bash
git push
```

Exemple:

```bash
git add fitxer.txt
git commit -m "Actualitzem fitxer.txt"
git push
```

### Rebre canvis amb `pull`

```bash
git pull
```

`git pull` equival a:

```bash
git fetch
git merge
```

## Branches

Es recomana llegir el capítol sobre branques del llibre *Pro Git*.

## Com treballar en equip amb `git`

![Figura 2](images/img-01.png)

*Figura 2: Imatge extreta del blog de James Chambers.*

Es recomana llegir:

- *Using Git in a team: a cheatsheet*

## El fitxer `.gitignore`

Exemple de `.gitignore`:

```gitignore
*.class
*.log
```

## Consultar l’historial de commits

Historial complet:

```bash
git log
```

Historial resumit:

```bash
git log --oneline
```

Historial amb gràfic ASCII:

```bash
git log --graph
```

# GitHub

Es recomana llegir el capítol sobre GitHub del llibre *Pro Git*.

## Tips

- Recordar la contrasenya:
  https://gist.github.com/ankurk91/f0b26f1c30d0d6d3ca4e

## Referències

- Pro Git — Scott Chacon, Ben Straub  
  https://git-scm.com/book/es/v2

- Aprèn Git — Juan Julián Merelo, Pablo Hinojosa  
  https://github.com/oslugr/curso-git

- Git i GitHub. Guia de supervivència — Luis José Sánchez González  
  https://leanpub.com/gitygithub

- GitHub Guides  
  https://guides.github.com

- Using Git source control in VS Code  
  https://code.visualstudio.com/docs/sourcecontrol/overview

