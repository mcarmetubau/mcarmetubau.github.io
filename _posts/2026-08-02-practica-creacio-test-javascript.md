---
title: "Tasca: Programació en JavaScript. Automatització correcció test "
date: 2026-08-02 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implantació aplicacions WEB]
tags: [Administració de Sistemes Informàtics en Xarxa, Implantació aplicacions WEB, ASIX, FP, Aplicacions, WEB, Tasca, Pràctica]
---


## Pràctica de programació: Exemple Test d’orientació sobre hàbits d’estudi

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 15 hores.

RA

## Activitats

ES VALORARÀ POSITIVAMENT VARIAR EL TIPUS DE TEST (no és obligatori que el test sigui d'hàbits d'estudi)

Una acadèmia vol crear un sistema automàtic per conèixer els hàbits d'estudi dels seus alumnes.

L'alumne haurà de respondre un qüestionari creat amb Google Forms. Les respostes quedaran registrades automàticament en un Google Sheets.

El teu objectiu serà programar, amb JavaScript mitjançant Google Apps Script, un sistema que:

Creï automàticament el Google Form.
Creï les preguntes i les opcions de resposta.
Creï i vinculi un Google Sheets per emmagatzemar les respostes.
Detecti automàticament quan un alumne envia el formulari.
Utilitzi un trigger instal·lable per executar el programa de correcció.
Obtingui el correu electrònic de l'alumne.
Corregeixi automàticament les respostes.
Calculi una puntuació final.
Classifiqui els hàbits d'estudi de l'alumne.
Escrigui el resultat al Google Sheets.
Generi un document amb els resultats.
Converteixi el document en PDF.
Enviï el resultat per correu electrònic.
Eviti enviar dues vegades el mateix resultat.
Registri els possibles errors del sistema.

### El qüestionari

El formulari tindrà 10 preguntes.

Cada pregunta tindrà quatre possibles respostes:

Mai
Poques vegades
Sovint
Sempre


Exemple de preguntes:
Estudio en un lloc tranquil i sense distraccions.
Planifico amb antelació quan estudiaré.
Acostumo a deixar l'estudi per a l'últim moment.
Quan estudio, mantinc el mòbil i altres distraccions allunyats.
Em costa mantenir la concentració durant una sessió d'estudi.
Repasso els continguts després d'haver-los estudiat.
Organitzo les tasques segons la seva importància.
Estudio moltes hores seguides sense fer pauses.
Quan no entenc alguna cosa, busco ajuda o informació.
Abans d'un examen, acostumo a preparar un pla d'estudi.


### Sistema de puntuació

Les respostes positives tindran aquesta puntuació:

Resposta	Punts
Mai	1
Poques vegades	2
Sovint	3
Sempre	4

Però hi haurà 3 preguntes inverses:

Pregunta 3
Pregunta 5
Pregunta 8

En aquestes preguntes:

Resposta	Puntuació
Mai	4
Poques vegades	3
Sovint	2
Sempre	1


La fórmula pot ser:

valor = 5 - valor;


### Resultat final

Com que tenim 10 preguntes amb un màxim de 4 punts:

Puntuació màxima = 40

Es proposen tres nivells:

Puntuació	Resultat
10–20	Hàbits d'estudi millorables
21–30	Hàbits d'estudi adequats
31–40	Hàbits d'estudi molt bons

El programa haurà d'utilitzar una estructura if / else if / else per determinar el resultat.

Per exemple:

if (puntuacio <= 20) {
    ...
} else if (puntuacio <= 30) {
    ...
} else {
    ...
}


### Part 1 — Creació del formulari

L'alumne haurà de crear una funció:

function crearFormHabitsEstudi() {
    ...
}

Aquesta funció haurà de:

Crear el formulari.
Assignar-li un títol.
Afegir una descripció.
Activar la recollida del correu electrònic.
Activar la barra de progrés.
Crear les 10 preguntes.
Fer que totes siguin obligatòries.
Crear el Google Sheets.
Vincular el formulari amb el Sheets.
Mostrar al Logger:
URL del formulari.
URL d'edició.
URL del Sheets.

Es treballaran especialment:

FormApp.create()
form.addMultipleChoiceItem()
item.setChoiceValues()
SpreadsheetApp.create()
form.setDestination()


### Part 2 — Estructura de dades

Es demana utilitzar arrays per evitar repetir codi.

Per exemple:

const opcions = [
    'Mai',
    'Poques vegades',
    'Sovint',
    'Sempre'
];

I:

const preguntes = [
    'Estudio en un lloc tranquil...',
    'Planifico amb antelació...',
    ...
];

També es definirà:

const ITEMS_INVERSOS = [3, 5, 8];

Això permetrà practicar:

arrays;
forEach();
for;
índexs;
constants;
funcions.


### Part 3 — Trigger

Aquesta és una de les parts més importants de la pràctica.

L'alumne haurà de crear un trigger instal·lable que executi:

function corregirHabitsEstudi(e) {
    ...
}

quan s'enviï el formulari.

La configuració serà:

Funció:
corregirHabitsEstudi


Font de l'esdeveniment:
Del full de càlcul


Tipus d'esdeveniment:
En enviar el formulari

Aquesta part permet treballar el concepte d'esdeveniments.


### Part 4 — Lectura de les dades

Quan un alumne enviï el formulari, el programa haurà de recuperar:

la fila corresponent;
les capçaleres;
les respostes;
el correu electrònic.

Es treballaran mètodes com:

e.range
getRow()
getValues()
getLastColumn()

L'alumne haurà d'aprendre que el trigger proporciona informació sobre quina fila acaba de rebre la resposta.

### Part 5 — Correcció

Crear una funció:

function convertirResposta(resposta) {
    ...
}

que converteixi:

Mai             → 1
Poques vegades   → 2
Sovint           → 3
Sempre           → 4

Després, dins de la correcció:

if (ITEMS_INVERSOS.includes(numeroPregunta)) {
    valor = 5 - valor;
}

Finalment:

puntuacioTotal += valor;



### Part 6 — Interpretació

Crear:

function obtenirResultat(puntuacio) {
    ...
}

Aquesta funció retornarà un objecte:

return {
    titol: '...',
    explicacio: '...'
};

Això permet treballar una estructura molt interessant de JavaScript: objectes retornats per funcions.

### Part 7 — Modificació automàtica del Sheets

El programa haurà de crear automàticament aquestes columnes:

Puntuació
Interpretació
Estat enviament
Data enviament
ID processament
Error

Això obliga a implementar una funció del tipus:

function obtenirOCrearColumna(sheet, nom) {
    ...
}

D'aquesta manera l'alumne practicarà:

lectura de capçaleres;
cerca d'un element en un array;
indexOf();
creació dinàmica de columnes.


### Part 8 — Generació del PDF

Quan la correcció sigui correcta, el programa haurà de crear un document amb:

títol;
correu de l'alumne;
data;
puntuació;
interpretació;
explicació;
detall de les 10 respostes;
puntuació de cada pregunta.

Es farà servir:

DocumentApp.create()

i posteriorment:

getAs(MimeType.PDF)

El PDF es guardarà automàticament en una carpeta de Google Drive:

Resultats Hàbits d'Estudi


### Part 9 — Enviament del correu

El resultat s'enviarà automàticament a l'adreça introduïda al formulari.

S'utilitzarà:

MailApp.sendEmail()

El correu haurà d'incloure:

Assumpte:

Resultat del qüestionari d'hàbits d'estudi

Cos:

salutació;
puntuació;
resultat;
explicació;
avís que el qüestionari és orientatiu.

I haurà d'adjuntar el PDF.

### Part 10 — Control de duplicats

El programa haurà d'evitar que un mateix resultat s'enviï dues vegades.

Per això s'utilitzarà una columna:

Estat enviament

Abans de processar:

if (estat === 'Enviat') {
    return;
}

I després d'enviar:

sheet
    .getRange(fila, colEstat)
    .setValue('Enviat');

15. Part 11 — Gestió d'errors

Tot el procés principal haurà d'estar dins d'un:

try {
    ...
} catch (error) {
    ...
}

Si alguna cosa falla:

Estat enviament → ERROR
Error → missatge de l'error

D'aquesta manera l'alumne podrà saber si el problema és:

el correu;
una resposta;
el PDF;
Google Drive;
permisos;
MailApp;
una columna;
el trigger.

### Estructura final del programa

L'alumne hauria d'acabar tenint aproximadament aquesta arquitectura:

crearFormHabitsEstudi()
        │
        ▼
Google Forms
        │
        ▼
Google Sheets
        │
        │
        ▼
      TRIGGER
        │
        ▼
corregirHabitsEstudi(e)
        │
        ├── trobarEmail()
        │
        ├── obtenirRespostes()
        │
        ├── convertirResposta()
        │
        ├── calcularPuntuacio()
        │
        ├── obtenirResultat()
        │
        ├── escriureResultat()
        │
        ├── crearPDF()
        │
        └── enviarEmail()
                    │
                    ▼
              Alumne rep PDF


### Funcions que haurà de programar l'alumne

S'han de programar com a mínim aquestes funcions:

crearFormHabitsEstudi()
corregirHabitsEstudi(e)
trobarEmail()
convertirResposta()
calcularPuntuacio()
obtenirResultat()
obtenirOCrearColumna()
crearPDF()
enviarEmail()
registrarError()
18. Objectius d'aprenentatge

Amb aquesta pràctica es treballen diversos conceptes alhora:

JavaScript
Variables i constants
Arrays
Objectes
Funcions
Paràmetres
return
if / else
Bucles for
forEach
includes
indexOf
try / catch
Manipulació de strings
Dates
Google Apps Script
FormApp
SpreadsheetApp
DocumentApp
DriveApp
MailApp
Triggers
Objecte d'esdeveniment e
Permisos i autoritzacions
Logger
Programació d'automatitzacions
Esdeveniments
Processament automàtic
Validació de dades
Control d'errors
Control de duplicats
Generació de documents
Enviament automàtic


### Ampliacions opcionals


Nivell 1 — Estadística

Calcular també:

Mitjana
Puntuació màxima
Puntuació mínima

Nivell 2 — Gràfic

Crear automàticament un gràfic amb les puntuacions de les 10 preguntes.

Nivell 3 — Resultats per blocs

Dividir les preguntes en:

Organització
Concentració
Planificació
Estratègies d'estudi

i calcular una puntuació per cada bloc.

