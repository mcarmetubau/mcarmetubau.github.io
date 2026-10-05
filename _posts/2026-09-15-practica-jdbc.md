---
title: "Tasca: connexió a MySQL mitjançant DBeaver i JDBC "
date: 2026-09-15 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web]
tags: [Administració de Sistemes Informàtics en Xarxa, Administració de sistemes gestors de bases de dades, ASIX, FP, Base de dades ,  Tasca, Pràctica, jdbc, dbeaver]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'apte o no apte.

Durada activitats obligatòries: 3 hores.

RA 

> 📸 Recorda fer captures dels passos realitzats
{:.prompt-info}  

# Pràctica: connexió a MySQL mitjançant DBeaver i JDBC

# 1. Part teòrica

## 1.1. Què és DBeaver?

**DBeaver** és una eina gràfica de gestió i administració de bases de dades.

Permet connectar-se a diferents sistemes gestors de bases de dades, com ara:

* MySQL
* PostgreSQL
* MariaDB
* Oracle
* SQL Server
* SQLite
* Firebird
* Entre molts altres.

DBeaver permet treballar amb bases de dades sense haver de fer totes les operacions des de la línia de comandes.

Entre les seves funcionalitats principals trobem:

* Crear i gestionar connexions.
* Explorar bases de dades i taules.
* Executar sentències SQL.
* Consultar i modificar dades.
* Crear i modificar estructures de taules.
* Visualitzar relacions entre taules.
* Generar diagrames entitat-relació.
* Importar i exportar dades.
* Gestionar diferents bases de dades des d'una mateixa aplicació.

Per tant, DBeaver actua com a **client de bases de dades**.

---

## 1.2. Què és JDBC?

**JDBC** significa:

> **Java Database Connectivity**

És una API de Java que permet que les aplicacions Java es puguin comunicar amb diferents sistemes gestors de bases de dades.

JDBC proporciona una interfície comuna per treballar amb bases de dades.

Això significa que un programa Java pot executar sentències SQL contra una base de dades sense haver d'implementar directament tot el protocol de comunicació específic de cada sistema gestor.

El funcionament general és:

```text
Aplicació Java
      │
      │ JDBC
      ▼
Driver JDBC
      │
      ▼
Sistema gestor de BD
      │
      ▼
Base de dades
```

---

## 1.3. Què és un driver JDBC?

Un **driver JDBC** és el component que permet que JDBC es comuniqui amb un sistema gestor de bases de dades concret.

Cada sistema gestor necessita un driver compatible.

Per exemple:

| Base de dades | Driver JDBC            |
| ------------- | ---------------------- |
| MySQL         | MySQL Connector/J      |
| PostgreSQL    | PostgreSQL JDBC Driver |
| Oracle        | Oracle JDBC Driver     |
| Firebird      | Jaybird                |
| SQL Server    | Microsoft JDBC Driver  |

En aquesta pràctica utilitzarem:

```text
MySQL
   ↓
MySQL Connector/J
   ↓
JDBC
```

**MySQL Connector/J** és el controlador JDBC que permet establir connexions entre aplicacions Java i MySQL.

---

## 1.4. Relació entre DBeaver, JDBC i MySQL

DBeaver és el programa que utilitzarem com a client.

Per connectar-se a MySQL, DBeaver necessita un controlador compatible amb MySQL.

En aquesta pràctica el controlador serà **MySQL Connector/J**.

El procés conceptual és:

```text
┌───────────────────────┐
│        DBeaver        │
│                       │
│      Client SQL       │
└───────────┬───────────┘
            │
            │ JDBC
            ▼
┌───────────────────────┐
│   MySQL Connector/J   │
│      Driver JDBC      │
└───────────┬───────────┘
            │
            │ Protocol MySQL
            ▼
┌───────────────────────┐
│     Servidor MySQL    │
└───────────┬───────────┘
            │
            ▼
┌───────────────────────┐
│    Base de dades      │
└───────────────────────┘
```

Per tant:

* **DBeaver** és el client que utilitzem.
* **JDBC** és l'API/estàndard de connexió.
* **MySQL Connector/J** és el driver JDBC.
* **MySQL** és el sistema gestor de bases de dades.
* **La base de dades** conté les taules i les dades.

---

## 1.5. DBeaver utilitza JDBC?

Sí.

Quan configurem una connexió MySQL a DBeaver, DBeaver utilitza el controlador JDBC corresponent per comunicar-se amb MySQL.

Per això, quan creem una connexió podem veure informació relacionada amb el driver.

Per exemple:

```text
Database: MySQL

Driver:
MySQL Connector/J
```

Això permet que DBeaver pugui enviar les consultes SQL al servidor MySQL.

---

## 1.6. Què és una URL JDBC?

Una connexió JDBC utilitza una **URL de connexió** per indicar a quin servidor i a quina base de dades ens volem connectar.

En el cas de MySQL, una URL JDBC té habitualment aquesta estructura:

```text
jdbc:mysql://HOST:PORT/BASE_DE_DADES
```

Per exemple:

```text
jdbc:mysql://localhost:3306/nom_base_dades
```

Cada part té un significat:

```text
jdbc:mysql://localhost:3306/nom_base_dades
  │      │       │       │        │
  │      │       │       │        └── Base de dades
  │      │       │       └─────────── Port
  │      │       └─────────────────── Servidor
  │      └─────────────────────────── Sistema MySQL
  └────────────────────────────────── Protocol JDBC
```

Si el servidor és remot:

```text
jdbc:mysql://192.168.1.100:3306/nom_base_dades
```

---

## 1.7. Què és el port 3306?

El **port 3306** és el port utilitzat habitualment per MySQL per acceptar connexions de xarxa.

Per exemple:

```text
Servidor: localhost
Port:     3306
```

Quan DBeaver intenta connectar-se, està intentant establir una comunicació amb MySQL a través d'aquest port.

Si MySQL utilitza un altre port, hem d'indicar el port corresponent.

Podem comprovar el port configurat al servidor MySQL amb:

```sql
SHOW VARIABLES LIKE 'port';
```

---

## 1.8. Connexió local i connexió remota

És important diferenciar entre una connexió **local** i una connexió **remota**.

### Connexió local

DBeaver i MySQL estan instal·lats al mateix ordinador:

```text
┌─────────────────────────────┐
│         Ordinador           │
│                             │
│  DBeaver ───► MySQL         │
│             localhost:3306  │
│                             │
└─────────────────────────────┘
```

En aquest cas podem utilitzar:

```text
localhost
```

com a servidor.

### Connexió remota

DBeaver i MySQL estan en ordinadors diferents:

```text
┌────────────────┐          ┌────────────────┐
│ PC client      │          │ Servidor       │
│                │          │                │
│ DBeaver        │ ───────► │ MySQL          │
│                │  xarxa   │                │
└────────────────┘          └────────────────┘
```

En aquest cas hem d'utilitzar l'adreça IP o el nom del servidor:

```text
192.168.1.100
```

i el port corresponent.

També hem de tenir en compte el **firewall**, la configuració de MySQL i els permisos de l'usuari.

---

## 1.9. Autenticació

Per connectar-nos a MySQL necessitem unes credencials.

Normalment:

```text
Usuari:      nom_usuari
Contrasenya: ********
```

L'usuari ha de disposar dels permisos necessaris per accedir a la base de dades.

Per exemple, pot tenir permisos per:

* Consultar dades.
* Inserir dades.
* Actualitzar dades.
* Eliminar dades.
* Crear taules.

Els permisos dependran de la configuració del servidor.

---

## 1.10. JDBC i SQL

JDBC no és un llenguatge SQL.

JDBC és una tecnologia/API que permet comunicar una aplicació amb una base de dades.

SQL és el llenguatge que utilitzarem per treballar amb les dades.

Per exemple:

```sql
SELECT *
FROM nom_taula;
```

El procés conceptual és:

```text
DBeaver
   │
   │ Consulta SQL
   ▼
JDBC
   │
   │ Driver MySQL
   ▼
MySQL
   │
   ▼
Resultat
   │
   ▼
DBeaver
```

---

# 2. Objectiu de la pràctica

L'objectiu d'aquesta pràctica és configurar una connexió entre **DBeaver** i un servidor **MySQL** mitjançant el controlador **JDBC**.

Durant la pràctica aprendrem a:

* Comprovar que MySQL està funcionant.
* Identificar el servidor i el port de connexió.
* Configurar el firewall quan sigui necessari.
* Crear una connexió MySQL a DBeaver.
* Configurar el controlador JDBC.
* Introduir les dades de connexió.
* Comprovar que la connexió funciona.
* Consultar les bases de dades i les taules.
* Executar sentències SQL.
* Modificar dades i comprovar que els canvis es guarden.

---

# 3. Esquema de la connexió

La connexió que configurarem serà:

```text
┌──────────────────────┐
│       DBeaver        │
│                      │
│    Client SQL        │
└──────────┬───────────┘
           │
           │ JDBC
           ▼
┌──────────────────────┐
│ MySQL Connector/J    │
│                      │
│    Driver JDBC       │
└──────────┬───────────┘
           │
           │ TCP/IP
           │ Port 3306
           ▼
┌──────────────────────┐
│    Servidor MySQL    │
│                      │
│  nom_base_dades      │
└──────────────────────┘
```

---

# 4. Requisits previs

Abans de començar necessitem:

* Un servidor **MySQL** instal·lat i funcionant.
* **DBeaver** instal·lat.
* Una base de dades de prova.
* Un usuari de MySQL amb permisos suficients.
* El nom o l'adreça IP del servidor.
* El port de MySQL.

El port habitual de MySQL és:

```text
3306
```

Per a aquesta pràctica utilitzarem noms genèrics:

```text
Servidor:       IP_O_HOST
Port:           3306
Base de dades:  nom_base_dades
Usuari:         nom_usuari
Contrasenya:    ********
```

---

# 5. Comprovar que MySQL està funcionant

Abans de configurar DBeaver, hem de comprovar que el servidor MySQL està actiu.

Podem fer-ho des del sistema operatiu o des de l'eina que utilitzem per administrar MySQL.

També podem provar una connexió local amb:

```bash
mysql -u nom_usuari -p
```

Si la connexió funciona, podem continuar amb la configuració de DBeaver.

---

# 6. Comprovar el port de MySQL

El port habitual de MySQL és:

```text
3306
```

Des de MySQL podem comprovar-lo amb:

```sql
SHOW VARIABLES LIKE 'port';
```

El resultat hauria de mostrar un valor semblant a:

```text
port    3306
```

Aquest és el port que posteriorment indicarem a DBeaver.

---

# 7. Configuració del Firewall

Aquesta part només és necessària quan DBeaver es connecta a un servidor MySQL que es troba en **un altre ordinador o servidor**.

Si DBeaver i MySQL estan instal·lats al mateix ordinador, normalment no cal obrir el port al firewall per a aquesta pràctica.

## Windows Defender Firewall

Anem a:

```text
Windows Defender Firewall
        ↓
Configuració avançada
        ↓
Regles d'entrada
        ↓
Nova regla
```

Seleccionem:

```text
Tipus de regla: Port
```

Després:

```text
Protocol: TCP
Port local específic: 3306
```

Seleccionem:

```text
Permetre la connexió
```

A continuació seleccionem els perfils de xarxa que corresponguin.

Finalment assignem un nom a la regla, per exemple:

```text
MySQL TCP 3306
```

---

# 8. Crear una nova connexió a DBeaver

Obrim **DBeaver**.

A la pantalla principal seleccionem:

```text
New Database Connection
```

També podem utilitzar:

```text
Database
    ↓
New Database Connection
```

---

# 9. Seleccionar MySQL

DBeaver mostrarà una llista de sistemes de bases de dades.

Seleccionem:

```text
MySQL
```

i premem:

```text
Next
```

DBeaver prepararà la configuració del controlador JDBC de MySQL.

---

# 10. Configurar la connexió

A la pantalla de configuració introduïm:

```text
Host:       IP_O_HOST
Port:       3306
Database:   nom_base_dades
Username:   nom_usuari
Password:   ********
```

Si MySQL és al mateix ordinador:

```text
Host:       localhost
Port:       3306
Database:   nom_base_dades
Username:   nom_usuari
Password:   ********
```

---

# 11. Configuració del controlador JDBC

DBeaver utilitza un controlador JDBC per comunicar-se amb MySQL.

El controlador que utilitzarem és:

```text
MySQL Connector/J
```

A la configuració de la connexió podem accedir a la configuració del driver.

DBeaver normalment detectarà si falta el controlador i oferirà descarregar-lo.

Seleccionem l'opció de descàrrega del driver i esperem que finalitzi.

---

# 12. Comprovar la URL JDBC

DBeaver pot generar automàticament la URL JDBC.

La seva estructura general és:

```text
jdbc:mysql://IP_O_HOST:3306/nom_base_dades
```

Per exemple:

```text
jdbc:mysql://localhost:3306/nom_base_dades
```

Comprovem que la informació sigui correcta abans de provar la connexió.

---

# 13. Provar la connexió

Una vegada configurats tots els camps, premem:

```text
Test Connection
```

DBeaver intentarà connectar-se al servidor MySQL.

Si tot és correcte, apareixerà un missatge indicant que la connexió s'ha realitzat correctament.

Això confirma que:

* El servidor és accessible.
* El port és correcte.
* El driver JDBC funciona.
* L'usuari és correcte.
* La contrasenya és correcta.
* La base de dades és accessible.

---

# 14. Desar la connexió

Si la prova ha funcionat, premem:

```text
Finish
```

La connexió apareixerà al panell de navegació de DBeaver.

Podem fer doble clic sobre la connexió per obrir-la.

---

# 15. Explorar la base de dades

Una vegada connectats, podem desplegar:

```text
nom_base_dades
    └── Tables
```

Aquí apareixeran les taules disponibles.

Per exemple:

```text
Tables
├── nom_taula_1
├── nom_taula_2
└── nom_taula_3
```

---

# 16. Consultar una taula

Obrim un:

```text
SQL Editor
```

i executem:

```sql
SELECT *
FROM nom_taula;
```

Aquesta consulta mostra totes les files i columnes de la taula.

---

# 17. Fer una consulta amb un filtre

Podem consultar només determinades dades.

Per exemple:

```sql
SELECT *
FROM nom_taula
WHERE id = 1;
```

---

# 18. Inserir una dada

Per comprovar que tenim permisos d'escriptura podem fer un `INSERT`.

```sql
INSERT INTO nom_taula (columna1, columna2)
VALUES ('valor1', 'valor2');
```

Després:

```sql
SELECT *
FROM nom_taula;
```

---

# 19. Modificar una dada

Podem provar un `UPDATE`:

```sql
UPDATE nom_taula
SET columna1 = 'nou_valor'
WHERE id = 1;
```

I comprovar el canvi:

```sql
SELECT *
FROM nom_taula
WHERE id = 1;
```

---

# 20. Eliminar una dada

També podem provar un `DELETE`:

```sql
DELETE FROM nom_taula
WHERE id = 1;
```

I comprovar el resultat:

```sql
SELECT *
FROM nom_taula;
```

> **Important:** treballeu sempre amb dades de prova. No elimineu dades importants del servidor.

---

# 21. Consultar l'estructura de la base de dades

Podem utilitzar SQL per consultar informació sobre la base de dades.

Veure les bases de dades:

```sql
SHOW DATABASES;
```

Veure les taules:

```sql
SHOW TABLES;
```

Veure l'estructura d'una taula:

```sql
DESCRIBE nom_taula;
```

---

# 22. Diagrama de la base de dades

DBeaver permet generar una representació gràfica de les taules i les seves relacions.

El diagrama permet identificar:

* Claus primàries.
* Claus foranes.
* Columnes.
* Relacions entre taules.

Exemple:

```text
┌──────────────────┐
│   nom_taula_1    │
├──────────────────┤
│ PK id            │
│ columna1         │
│ columna2         │
└────────┬─────────┘
         │
         │ FK
         ▼
┌──────────────────┐
│   nom_taula_2    │
├──────────────────┤
│ PK id            │
│ columna3         │
│ columna4         │
└──────────────────┘
```

---

# 23. Què s'ha d'entregar?

L'entrega haurà d'incloure captures de pantalla que demostrin els diferents passos de la pràctica.

## Captura 1 — Connexió

Mostrar:

* Host.
* Port.
* Base de dades.
* Usuari.

## Captura 2 — Driver JDBC

Mostrar:

* MySQL Connector/J.
* Versió del driver.
* Configuració del controlador.

## Captura 3 — Connexió correcta

Mostrar el resultat de:

```text
Test Connection
```

amb una connexió correcta.

## Captura 4 — Base de dades

Mostrar:

* Base de dades.
* Taules disponibles.

## Captura 5 — Consulta SQL

Executar:

```sql
SELECT *
FROM nom_taula;
```

i mostrar el resultat.

## Captura 6 — Modificació

Realitzar un `INSERT` o `UPDATE` i demostrar que el canvi s'ha desat.

## Captura 7 — Diagrama

Mostrar el diagrama de les taules i les seves relacions, si n'hi ha.

---


## Idea clau

En aquesta pràctica hem de diferenciar tres conceptes:

> **DBeaver és el client.**

> **JDBC és la tecnologia/API de connexió.**

> **MySQL Connector/J és el driver JDBC que permet la comunicació amb MySQL.**

La connexió completa és:

```text
DBeaver
   ↓
JDBC
   ↓
MySQL Connector/J
   ↓
Servidor MySQL
   ↓
Base de dades
```
