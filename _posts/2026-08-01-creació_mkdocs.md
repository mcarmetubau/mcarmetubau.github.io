---
title: "Tasca: Generació de llocs web estàtics amb MkDocs i el tema Material. Instal·lació, configuració i desplegament a GitHub "
date: 2026-08-01 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Desenvolupament WEB]
tags: [ASIX, Desenvolupament,WEB,MKDOCS,ASIX, FP, Tasca, Pràctica]

---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.


# MkDocs

> MkDocs és un **generador de llocs web estàtics** que pren com a entrada text escrit en Markdown i utilitza dissenys predefinits (temes) per crear un lloc web estàtic. Permet modificar l’aspecte del lloc, els enllaços, les dades que es mostren a la pàgina i moltes coses més. 

!!! tip "Pàgina oficial"
    Accedeix a la pàgina oficial de **Material for MkDocs**: https://squidfunk.github.io/mkdocs-material/

---

## Proposta didàctica

> **RA4.** *Documenta, versiona i desplega la solució i les seves evidències.*

### Criteris d’avaluació relacionats

- **CE-RA4a**: S’ha documentat el procediment d’instal·lació i desplegament.
- **CE-RA4b**: S’ha utilitzat un sistema de control de versions per gestionar la documentació.
- **CE-RA4c**: S’ha generat documentació web accessible i professional.

### Continguts

**Bloc 1 — Introducció a MkDocs**
- Què és MkDocs?
- Instal·lació de MkDocs i del tema Material.
- Creació del primer lloc web.

**Bloc 2 — Configuració bàsica**
- Estructura de directoris i fitxers.
- Fitxer `mkdocs.yml`.
- Navegació i organització del contingut.

**Bloc 3 — Desplegament**
- Desplegament a GitHub Pages.
- Integració amb Git i GitHub.
- Personalització bàsica del tema Material.

---

## 1. Introducció

### 1.1. Què és MkDocs?

**MkDocs** és un generador de llocs web estàtics que permet crear documentació professional a partir de fitxers Markdown. L'aspecte de la web és determinat per plantilles o temes, que descriuen tant l'estructura de les diferents pàgines com l'aspecte visual.

La filosofia de MkDocs és centrar-se en el contingut (escrit a Markdown) i no tant en laspecte, que simplement es configura una vegada mitjançant un tema. El tema més popular i recomanat és **Material for MkDocs**, que ofereix un aspecte visual modern, atractiu i aporta una gran quantitat de funcionalitats addicionals.

#### Característiques principals

- **Generació estàtica:** Crea llocs web estàtics (HTML, CSS, JavaScript) que es poden allotjar a qualsevol servidor web
- **Basat a Markdown:** El contingut s'escriu a Markdown, un format de text pla fàcil d'aprendre
- **Temes predefinits:** Utilitza temes que defineixen l'aspecte visual i l'estructura
- **Navegació automàtica:** Genera automàticament la navegació basant-se en l'estructura d'arxius
- **Cerca integrada:** Molts temes inclouen funcionalitat de cerca
- **Fàcil desplegament:** Es pot desplegar fàcilment a GitHub Pages, Netlify, o qualsevol servidor web


#### Principals Avantatges d'utilització MkDocs
 
- **Documentació professional:** Permet crear documentació web d'aspecte professional sense coneixements avançats d'HTML/CSS
- **Versionat amb Git:** Els arxius Markdown es poden versionar amb Git, facilitant el treball col·laboratiu
- **Desplegament a GitHub Pages:** S'integra perfectament amb GitHub, permetent allotjar la documentació del projecte de forma gratuïta
- **Enfocament en contingut:** Permet centrar-se a escriure el contingut sense preocupar-se pel disseny
- **Actualització senzilla:** Actualitzar la documentació és tan simple com editar un fitxer Markdown i fer commit

---

## 2. Instal·lació

### 2.1. Requisits previs

Abans d'instal·lar MkDocs, necessites tenir instal·lat:

- **Python 3.6 o superior**
- **pip** (gestor de paquets de Python)

Per verificar si tens Python instal·lat:

``` bash
python3 --version
```

O en algunos sistemas:

``` bash
python --version
```

### 2.2. Instal·lació de MkDocs

La manera més senzilla d'instal·lar MkDocs és mitjançant pip:

``` bash
pip install mkdocs
````

O si necessites fer servir pip3:

``` bash
pip3 install mkdocs
````

Per verificar que la instal·lació va ser correcta:

``` bash
mkdocs --version
````


### 2.3. Instal·lació del tema Material

El tema Material for MkDocs és el més popular i recomanat. S'instal·la com a paquet addicional:

``` bash
pip install mkdocs-material
````

O amb pip3:

``` bash
pip3 install mkdocs-material
````



### 2.4. Verificació
Un cop instal·lat, pots verificar que tot funciona correctament creant un projecte de prova:

``` bash
mkdocs new meu-projecte
cd meu-projecte
mkdocs serve
````

Això hauria d'iniciar un servidor de desenvolupament local a `http://127.0.0.1:8000` on podeu veure el vostre lloc web.

---



## 3. Configuració
### 3.1. Crear un projecte nou

Per crear un nou projecte MkDocs:

``` bash
mkdocs new nom-del-projecte
````

Això crea una estructura de directoris bàsica:

````
nom-del-projecte/
├── docs/
│ └── index.md
└── mkdocs.yml
````

### 3.2. Estructura de directoris

L’estructura típica d’un projecte MkDocs és:
````
nom-del-projecte/
├── docs/              # Directori amb els fitxers Markdown
│   ├── index.md       # Pàgina principal
│   ├── guia.md        # Altres pàgines
│   └── ...
├── mkdocs.yml         # Fitxer de configuració
└── site/              # Directori generat (no es versiona)
└── ...                # HTML generat
````



**docs/**: Conté tots els fitxers Markdown que formen el contingut del lloc  
**mkdocs.yml**: Fitxer de configuració principal  
**site/**: Directori on es genera el lloc web estàtic (es crea en executar `mkdocs build`)

---

### 3.3. Fitxer de configuració `mkdocs.yml`

El fitxer `mkdocs.yml` és el cor de la configuració. Un exemple bàsic:

```yaml
site_name: El Meu Projecte 
site_description: Documentació del projecte d’ASIX
site_author: Nom de l’Alumne

theme:
  name: material
  palette:
    - scheme: default
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-7
        name: Canviar a mode fosc
    - scheme: slate
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-4
        name: Canviar a mode clar

nav:
  - Inici: index.md
  - Guia: guia.md
```

#### Elements principals de la configuració
**Informació del lloc:**

- `site_name`: Nom del lloc web

- `site_description`: Descripció del lloc

- `site_author`: Autor del lloc

**Tema:**

- `theme.name`: Nom del tema (material, readthedocs, etc.)

- `theme.palette`: Configuració de colors i mode clar/fosc

**Navegació:**

- `nav`: Defineix l’estructura de navegació del lloc

- Es pot organitzar en seccions i subseccions

### 3.4. Configuració avançada del tema Material
El tema Material ofereix moltes opcions de personalització:

``` yaml
theme:
  name: material
  language: ca
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - navigation.top
    - search.suggest
    - search.highlight
  icon:
    repo: fontawesome/brands/github
  palette:
    - scheme: default
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-7
        name: Mode fosc
    - scheme: slate
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-4
        name: Mode clar
```

#### Característiques del tema Material

- **Navegació per pestanyes:** Organitza el contingut en pestanyes

- **Navegació per seccions:** Barra lateral amb seccions expandibles

- **Cerca integrada:** Cerca en temps real

- **Mode fosc/clar:** Alternança entre temes

- **Responsive:**  Adaptació a pantalles petites

- **Icones:** Suport per Material Design i Font Awesome

---
## 4. Alojament del lloc web

Un cop construït el lloc web, cal allotjar-lo perquè sigui accessible públicament. Les opcions més comunes és GitHub Pages 

4.1. Opcions d’allotjament
**GitHub Pages (Recomanat):**

- Gratuït i fàcil de configurar

- Integració perfecta amb Git i GitHub

- Actualització automàtica amb cada commit

- URL personalitzada: usuari.github.io/nom-repositori


## 5. Alojament a GitHub Pages

5.1. Preparar el repositori
Per allotjar el teu lloc MkDocs a GitHub Pages:

1. **Crear un repositori a GitHub** (públic o privat)

2. **Inicialitzar Git al projecte:**

```bash
cd nom-del-projecte
git init
git add .
git commit -m "Inicialitzar projecte MkDocs"
```

3. **Connectar amb el repositori remot:**

``` bash
git remote add origin https://github.com/usuari/nom-repositori.git
git branch -M main
git push -u origin main
``` 

### 5.2. Configurar GitHub Pages
Hi ha dues formes principals de desplegar MkDocs a GitHub Pages:

Opció 1: Usar la branca gh-pages (Recomanat)
1. **Instal·lar el plugin de GitHub:**

``` bash
pip install mkdocs-git-revision-date-localized-plugin
```

2. **Configurar `mkdocs.yml`:**

``` yaml
plugins:
  - git-revision-date-localized:
      enable_creation_date: true
```

3. **Construir i desplegar:**

```bash
mkdocs gh-deploy
```

Aquest comandament:

- Construeix el lloc web

- Crea automàticament la branca gh-pages

- Puja el contingut a GitHub

- Configura GitHub Pages per usar aquesta branca

#### Opció 2: Usar GitHub Actions (Avançat)
Per a un desplegament automàtic cada cop que es fa push, es pot configurar GitHub Actions. Això requereix crear un fitxer `.github/workflows/ci.yml`:

``` yaml
name: ci
on: 
push: 
branxos: 
- main
jobs: 
deploy: 
runs-on: ubuntu-latest 
steps: 
- uses: actions/checkout@v2 
- uses: actions/setup-python@v2 
with: 
python-version: 3.x 
- run: pip install mkdocs-material 
- run: mkdocs gh-deploy --force
```

### 5.3. Accedir al lloc

Un cop desplegat, el lloc estarà disponible a:

```
https://usuari.github.io/nom-repositori/
```

O si heu configurat un domini personalitzat:

```
https://elteudominio.com
```

---

## 6. Treballar amb MkDocs
### 6.1. Servidor de desenvolupament local

Per veure els canvis en temps real mentre treballes:

``` bash
mkdocs serve
```

Això inicia un servidor local a `http://127.0.0.1:8000` que s'actualitza automàticament quan modifiqueu els fitxers.

El servidor de desenvolupament és molt útil perquè:

- **Actualització automàtica:** Els canvis als fitxers Markdown es reflecteixen immediatament al navegador
- **Sense necessitat de reconstruir:** No necessites executar `mkdocs build` cada vegada que fas un canvi
- **Depuració:** Permet veure errors i advertiments en temps real

### 6.2. Construir el lloc

Per generar els fitxers HTML estàtics:

``` bash
mkdocs build
````

Això crea el directori `site/` amb tots els fitxers HTML, CSS i JavaScript necessaris.

### 6.3. Estructura de navegació

La navegació es defineix al fitxer `mkdocs.yml`:

`` yaml
nav: 
- Inici: index.md 
- Guia d'usuari: 
- Introducció: guia/introduccio.md 
- Instal·lació: guia/instalacio.md 
- Configuració: guia/configuracio.md 
- API: 
- Referència: api/referència.md 
- Sobre: ​​sobre.md
```

### 6.4. Escriure contingut a Markdown

El contingut s'escriu en fitxers Markdown (`.md`) dins del directori `docs/`. MkDocs suporta la sintaxi estàndard de Markdown i extensions addicionals:

``` markdown

# Títol principal

## Subtítol

Text normal amb **negreta** i *cursiva*.

- Llista amb vinyetes
- Un altre element

1. Llista numerada
2. Segon element

[Enllaç](https://exemple.com)

![Imatge](ruta/imatge.png)

``` markdown
Bloc de codi
```
``

---

## 7. Personalització avançada

### 7.1. Extres del tema Material

El tema Material ofereix moltes funcionalitats addicionals:

#### Advertiments i notes

`` markdown
!!! note "Nota" 
Aquest és un text de nota important.

!!! warning "Advertiment" 
Aneu amb compte amb això.

!!! tip "Consell" 
Un consell útil.

!!! danger "Perill" 
Això és perillós.
```

#### Pestanyes

``` markdown
=== "Opció 1" 
Contingut de l'opció 1

=== "Opció 2" 
Contingut de l'opció 2
```

#### Codi amb ressaltat de sintaxi

El tema Material suporta ressaltat de sintaxi per a molts llenguatges:

```` markdown
``` python
def funcio(): 
return "Hola món"
```
````

### 7.2. Plugins addicionals

MkDocs suporta plugins que afegeixen funcionalitats:

- **mkdocs-mermaid2-plugin:** Per a diagrames Mermaid
- **mkdocs-git-revision-date-localized-plugin:** Mostra dates d'última modificació
- **mkdocs-minify-plugin:** Minifica l'HTML generat
- **mkdocs-redirects:** Permet redireccions entre pàgines

Per instal·lar un plugin:

``` bash
pip install nom-del-plugin
````

I afegir-lo a `mkdocs.yml`:

`` yaml
plugins: 
- nom-del-plugin
````

---

## 8. Bones pràctiques

### 8.1. Organització del contingut

- **Estructura clara:** Organitza el contingut en seccions lògiques
- **Noms descriptius:** Fes servir noms de fitxer descriptius
- **Jerarquia:** Respecta la jerarquia de títols (H1, H2, H3)
- **Índex:** Mantingues un índex clar en la navegació

### 8.2. Versionat amb Git

- **Commits descriptius:** Fes commits amb missatges clars
- **Estructura de branques:** Usa branques per a diferents versions si és necessari
- **`.gitignore`:** Afegeix `site/` al `.gitignore` (no es versiona)

### 8.3. Manteniment

- **Actualitzar dependències:** Mantingues MkDocs i els plugins actualitzats
- **Revisar enllaços:** Verifica que els enllaços funcionin correctament
- **Provar localment:** Sempre prova localment abans de desplegar

---

## 9. Recursos i referències

### Documentació oficial

- **MkDocs:** [https://www.mkdocs.org/](https://www.mkdocs.org/)
- **Material for MkDocs:** [https://squidfunk.github.io/mkdocs-material/](https://squidfunk.github.io/mkdocs-material/)

### Eines relacionades

- **Markdown:** Format de text pla per escriure contingut
- **Git:** Sistema de control de versions
- **GitHub Pages:** Allotjament gratuït per a llocs estàtics
- **Python:** Llenguatge de programació necessari per a MkDocs

### Ordres útils

``` bash
# Crear nou projecte
mkdocs new nom-projecte

# Servidor de desenvolupament
mkdocs serve

# Construir lloc
mkdocs build

# Desplegar a GitHub Pages
mkdocs gh-deploy

# Veure ajuda
mkdocs --help
```

---