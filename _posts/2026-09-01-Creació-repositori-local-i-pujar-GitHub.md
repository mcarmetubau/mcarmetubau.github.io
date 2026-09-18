---
title: "Guió: Creació repositori local i pujar-lo al GitHub "
date: 2026-09-01 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implantació aplicacions WEB]
tags: [Administració de Sistemes Informàtics en Xarxa, Implantació aplicacions WEB, ASIX, FP, Aplicacions, WEB, Guió, GIT, GITHUB]
---



# Pas a pas: crear un repositori local i pujar-lo a GitHub

Aquest document explica com crear un repositori Git local, connectar-lo amb GitHub i pujar-hi el projecte.

## Visió general del procés

El procés que seguirem és:

```text
ORDINADOR (Git local)                 GITHUB
       │                                │
       │ git init -b main               │
       │                                │
       │                         Crear repo buit
       │                                │
       │ git remote add origin ... ────►│
       │                                │
       │ git push -u origin main ──────►│
       │                                │
       └────────── main ────────────────┘
```

En resum:

1. **Creem el repositori local** al nostre ordinador.
2. **Creem un repositori buit** a GitHub.
3. **Connectem** el repositori local amb GitHub.
4. **Pugem (`push`)** la branca `main` a GitHub.

---



## 1. Crear la carpeta del projecte

A l'ordinador, crea una carpeta per al projecte.

Per exemple:

```text
prova
```

Obre un terminal dins d'aquesta carpeta.

També pots fer-ho des del terminal amb:

```bash
cd prova
```

---

## 2. Inicialitzar el repositori Git local

Al terminal de l'ordinador, executa (dintre el directori prova):

```bash
git init -b main
```

Això crea un repositori Git local i fa que la branca principal es digui `main`.

Pots comprovar-ho amb:

```bash
git branch
```

Hauries de veure:

```text
* main
```

---

## 3. Crear un fitxer del projecte

Dins de la carpeta `prova`, crea algun fitxer.

Per exemple, podem crear un fitxer `index.html`:

```bash
echo "<h1>Això és una prova</h1>" > index.html
```

La carpeta tindrà ara:

```text
prova/
└── index.html
```

---

## 4. Comprovar l'estat del repositori

Al terminal, executa:

```bash
git status
```

Git mostrarà els fitxers que encara no estan preparats per fer un commit.

Per exemple:

```text
Untracked files:
  index.html
```

---

## 5. Afegir els fitxers a Git

Executa:

```bash
git add .
```

El `.` significa que afegim tots els fitxers de la carpeta actual.

Torna a comprovar l'estat:

```bash
git status
```

Ara el fitxer apareixerà com a preparat per fer el commit.

---

## 6. Fer el primer commit

Executa:

```bash
git commit -m "Primer commit"
```

Ara ja tenim una primera versió del projecte guardada al repositori local.

---

# GitHub

Ara crearem el repositori remot a GitHub.

## 7. Crear un repositori buit a GitHub

Entra a GitHub i inicia sessió.

Ves a **New repository**.

Posa, per exemple:

**Repository name:**

```text
prova
```

Pots posar una descripció si vols.

### ⚠️ Important

Quan GitHub et pregunti si vols afegir:

* README
* `.gitignore`
* License

**No seleccionis cap d'aquestes opcions.**

El repositori ha de quedar **buit**, perquè ja tenim el projecte creat localment.

Finalment, fes clic a **Create repository**.

---

# Connectar el repositori local amb GitHub

Hi ha dues maneres principals de connectar-nos a GitHub:

1. **HTTPS**
2. **SSH**

---

# 8. Connexió mitjançant HTTPS

## 8.1. Afegir el repositori remot

Quan crees el repositori a GitHub, copia l'adreça **HTTPS**.

Serà semblant a:

```text
https://github.com/USUARI/prova.git
```

Al terminal, executa:

```bash
git remote add origin https://github.com/USUARI/prova.git
```

On:

* `git remote add` → afegeix un repositori remot.
* `origin` → és el nom que assignem al repositori remot.
* `https://github.com/...` → és l'adreça del repositori de GitHub.

## 8.2. Comprovar la connexió

Executa:

```bash
git remote -v
```

Hauries de veure alguna cosa semblant a:

```text
origin  https://github.com/USUARI/prova.git (fetch)
origin  https://github.com/USUARI/prova.git (push)
```

## 8.3. Pujar la branca `main` a GitHub

Executa:

```bash
git push -u origin main
```

Aquest comandament puja la branca `main` del teu ordinador a GitHub.

La primera vegada, GitHub et demanarà que t'autentiquis mitjançant el mètode d'autenticació configurat.

## 8.4. Següents pujades

Una vegada configurada la connexió, les següents pujades es poden fer simplement amb:

```bash
git push
```

---

# 9. Connexió mitjançant SSH

Per utilitzar SSH, primer hem de configurar una clau SSH i associar-la al nostre compte de GitHub.

## 9.1. Obrir Git Bash

A Windows, utilitza **Git Bash** per executar les ordres següents.

## 9.2. Generar una clau SSH nova

Executa:

```bash
ssh-keygen -t ed25519 -C "el-teu-correu@example.com"
```

Prem `Enter` per acceptar la ruta per defecte:

```text
/c/Users/ElTeuNom/.ssh/id_ed25519
```

Quan ho demani, pots posar una **passphrase**.

> La passphrase és opcional, però és recomanable utilitzar-ne una.

## 9.3. Iniciar l'SSH agent

Executa:

```bash
eval "$(ssh-agent -s)"
```

## 9.4. Afegir la clau a l'SSH agent

Executa:

```bash
ssh-add ~/.ssh/id_ed25519
```

## 9.5. Mostrar la clau pública

Executa:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copia tot el contingut que apareix.

---

## 9.6. Afegir la clau pública a GitHub

A GitHub, ves a:

**Settings → SSH and GPG keys**

Clica:

**New SSH key**

Enganxa la clau que has copiat i guarda-la.

---

## 9.7. Comprovar la connexió amb GitHub

Al terminal, executa:

```bash
ssh -T git@github.com
```

Si la configuració és correcta, GitHub confirmarà que t'has autenticat correctament.

---

## 9.8. Associar el repositori local amb GitHub

Ara associem el repositori local amb el repositori remot.

Executa:

```bash
git remote add origin git@github.com:USUARI/prova.git
```

Per exemple:

```bash
git remote add origin git@github.com:mcarmetubau/prova.git
```

Aquí:

* `git remote add` → afegeix un repositori remot.
* `origin` → és el nom que donem al repositori remot.
* `git@github.com:...` → és l'adreça SSH del repositori de GitHub.

---

## 9.9. Comprovar la connexió

Executa:

```bash
git remote -v
```

Hauries de veure:

```text
origin  git@github.com:USUARI/prova.git (fetch)
origin  git@github.com:USUARI/prova.git (push)
```

---

## 9.10. Pujar la branca `main` a GitHub

Executa:

```bash
git push -u origin main
```

Aquest comandament puja la branca `main` del teu ordinador a GitHub.

## 9.11. Següents pujades

Les següents pujades es poden fer simplement amb:

```bash
git push
```

---

# 10. Comprovar el resultat

Torna a la pàgina del repositori a GitHub i actualitza-la.

Hauries de veure els fitxers del projecte.

Per exemple:

```text
prova/
└── index.html
```

També hauries de veure que la branca actual és:

```text
main
```

---

# 🔙 Revertir un commit

Si volem **desfer els canvis d'un commit**, però mantenir l'historial de Git, utilitzarem `git revert`.

## 11. Veure l'historial

Executa:

```bash
git log --oneline
```

Per exemple:

```text
a8f32c1 Tercer commit
72bc451 Segon commit
3d91f20 Primer commit
```

---

## 12. Desfer un commit

Si volem desfer el tercer commit:

```bash
git revert a8f32c1
```

Git crearà un **nou commit** que desfà els canvis del commit `a8f32c1`.

El commit original **no s'elimina** de l'historial.

L'historial quedarà semblant a:

```text
xxxxxxx Revert "Tercer commit"
a8f32c1 Tercer commit
72bc451 Segon commit
3d91f20 Primer commit
```

El projecte quedarà com estava abans del tercer commit, però l'historial continuarà intacte.

---

## 13. Pujar el `revert` a GitHub

Si el repositori ja està connectat amb GitHub:

```bash
git push
```

Ara el canvi també apareixerà a GitHub.

---

# 📌 Resum de les ordres principals

```bash
# Crear el repositori local
git init -b main

# Veure l'estat
git status

# Afegir els fitxers
git add .

# Crear un commit
git commit -m "Primer commit"

# Connectar amb GitHub
git remote add origin ADREÇA_DEL_REPOSITORI

# Primera pujada
git push -u origin main

# Pujades posteriors
git push

# Veure l'historial
git log --oneline

# Desfer un commit sense eliminar l'historial
git revert ID_DEL_COMMIT

# Pujar el revert a GitHub
git push
```



