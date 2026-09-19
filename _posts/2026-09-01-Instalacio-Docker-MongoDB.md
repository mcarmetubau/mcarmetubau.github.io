---
title: "Instalació Docker - MongoDB"
date: 2026-09-01 9:00:00 +0100
categories: [General]
tags: [pràctica, tasca, docker,mongodb]
---

# Instalació Docker i MongoDb

# MongoDB amb xarxa Docker i dades persistents

## 1. Crear la xarxa Docker

Aquesta comanda només cal executar-la la primera vegada:

```bash
docker network create mongo-network
```

Podem comprovar que existeix amb:

```bash
docker network ls
```

---

## 2. Crear el volum per guardar les dades

També només cal fer-ho una vegada:

```bash
docker volume create mongo-data
```

Comprovar-lo:

```bash
docker volume ls
```

Aquest volum farà que les dades de MongoDB es conservin encara que parem o eliminem el contenidor.

---

## 3. Crear i engegar el servidor MongoDB

```bash
docker run -d --name mongo-server --network mongo-network -v mongo-data:/data/db mongo
```

### Què fa cada opció?

* `-d` → executa MongoDB en segon pla.
* `--name mongo-server` → posa el nom `mongo-server` al contenidor.
* `--network mongo-network` → connecta el servidor a la xarxa Docker.
* `-v mongo-data:/data/db` → guarda les dades de MongoDB al volum `mongo-data`.
* `mongo` → utilitza la imatge de MongoDB.

Comprova que funciona:

```bash
docker ps
```

Hauries de veure:

```text
mongo-server
```

---

# 4. Connectar-nos a MongoDB

Obre una altra finestra de PowerShell i executa:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

Ara ja estem dins de `mongosh`.

Podem comprovar les bases de dades:

```javascript
show databases
```

I entrar a la nostra:

```javascript
use botiga
```

---

# 5. Treballar amb la base de dades

Per exemple:

```javascript
show collections
```

Consultar els llibres:

```javascript
db.llibres.find()
```

Buscar els llibres de Pepe:

```javascript
db.llibres.find({
    autor: "Pepe"
})
```

---

# 6. Sortir de MongoDB

Quan acabem de treballar:

```javascript
exit
```

Això només tanca el **client** `mongosh`.

El servidor MongoDB continua funcionant.

---

# 7. Parar MongoDB

Quan vulguem parar el servidor:

```bash
docker stop mongo-server
```

Ara el servidor està parat, però:

> **Les dades NO s'han perdut.**

Continuen guardades al volum:

```text
mongo-data
```

---

# 8. Tornar a engegar MongoDB

Quan tornem a encendre l'ordinador, si Docker Desktop està funcionant, podem comprovar els contenidors:

```bash
docker ps -a
```

Veurem `mongo-server` amb l'estat `Exited`.

Per tornar-lo a engegar:

```bash
docker start mongo-server
```

Comprovem:

```bash
docker ps
```

I tornem a entrar amb:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

La base de dades `botiga` i els llibres continuaran allà.

---

# 9. Què passa quan apaguem l'ordinador?

Quan apagues Windows:

```text
Windows
   │
   └── Docker Desktop
          │
          └── mongo-server → s'atura
```

Però les dades es mantenen:

```text
Docker
├── mongo-network
│
├── mongo-data
│      └── Dades de MongoDB
│
└── mongo-server
       └── MongoDB
```

Quan tornes a encendre l'ordinador:

1. Inicies Docker Desktop.
2. Inicies el servidor:

```bash
docker start mongo-server
```

3. Obres el client:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

4. Continues treballant normalment.

---

# 10. Comprovar que les dades s'han conservat

Abans d'apagar l'ordinador:

```javascript
use botiga
db.llibres.find()
```

Per exemple, hauríem de tenir:

```text
Bases de dades NoSQL → Pepe
Llibre A             → Maria
Llibre B             → Joan
```

Aturem MongoDB:

```bash
docker stop mongo-server
```

Tornem a engegar-lo:

```bash
docker start mongo-server
```

I tornem a entrar:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

Després:

```javascript
use botiga
db.llibres.find()
```

Els llibres continuaran existint.

---

# 11. Resum de les ordres que utilitzaràs habitualment

### Primera vegada

```bash
docker network create mongo-network
docker volume create mongo-data
docker run -d --name mongo-server --network mongo-network -v mongo-data:/data/db mongo
```

### Cada vegada que vulguis treballar

Si el servidor està parat:

```bash
docker start mongo-server
```

Després obre el client:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

### Quan acabis

Sortir de MongoDB:

```javascript
exit
```

Parar el servidor:

```bash
docker stop mongo-server
```

### Si tornes a encendre el PC

```bash
docker start mongo-server
```

I després:

```bash
docker run -it --rm --network mongo-network mongo mongosh --host mongo-server
```

> **Important:** no eliminis el volum `mongo-data` si vols conservar les dades. No executis `docker volume rm mongo-data` tret que vulguis eliminar-les definitivament.
