---
title: "Tasca: Creació i publicació d'una web estàtica amb GitHub Pages "
date: 2026-05-09 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Implentació desenvolupament WEB]
tags: [Administració de Sistemes Informàtics en Xarxa, Implantació d’aplicacions web, ASIX, FP, WEB, Implantació , Tasca, Pràctica, GitHub, Markdown, SSG, GitHubPages]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 10 hores.

RA


## Activitat: Creació i publicació d’una web estàtica amb GitHub Pages


En aquesta pràctica crearàs una web estàtica utilitzant un **Static Site Generator (SSG)** i la publicaràs a Internet mitjançant **GitHub Pages**.

El projecte servirà per treballar simultàniament:

* Continguts web.
* Markdown.
* Control de versions.
* Generació de webs estàtiques.
* Desplegament i publicació.
* Automatització del procés.

---

# 1. Introducció

Una **web estàtica** està formada principalment per fitxers HTML, CSS i JavaScript que el servidor entrega directament al navegador.

Un **Static Site Generator (SSG)** permet escriure el contingut de manera estructurada, habitualment amb Markdown, i generar automàticament els fitxers finals de la web.

El flux general de treball és:

```text
Markdown + configuració + tema
              ↓
     Static Site Generator
              ↓
          HTML + CSS + JS
              ↓
             Git
              ↓
           GitHub
              ↓
       GitHub Pages
              ↓
        Web publicada
```

---

# 2. Objectius

En finalitzar la pràctica hauràs de ser capaç de:

* Entendre què és una web estàtica i què és un Static Site Generator.
* Utilitzar Markdown per crear contingut.
* Crear i gestionar un repositori Git.
* Treballar amb GitHub des del terminal.
* Crear i configurar una web amb un SSG.
* Utilitzar i personalitzar un tema.
* Generar els fitxers finals de la web.
* Publicar la web mitjançant GitHub Pages.
* Actualitzar la web a partir de canvis enviats amb Git.
* Comparar diferents generadors de webs estàtiques.
* Justificar quin SSG és més adequat segons el tipus de projecte.

---

# 3. Entorn de treball

Cada grup utilitzarà un dels entorns següents:

| Opció | Entorn     | Llenguatge | Orientació principal       |
| ----- | ---------- | ---------- | -------------------------- |
| A     | **Hugo**   | Go         | Webs, blogs i documentació |
| B     | **Jekyll** | Ruby       | Blogs i webs senzilles     |
| C     | **MkDocs** | Python     | Documentació tècnica       |


Tot i utilitzar eines diferents, els requisits finals de la web seran equivalents.

---

# 4. Comparativa dels SSG

Abans de començar la implementació, investiga i compara **Hugo, Jekyll i MkDocs**.

Crea un resum / presentació comparant els diferents SSG

---

# 5. Enunciat

Has de crear una **web de documentació tècnica** per a una empresa fictícia o departament d'informàtica.

La web ha de tenir un aspecte professional i estar pensada perquè un administrador de sistemes pugui consultar informació tècnica.

La informació haurà d'estar organitzada de manera clara mitjançant un menú de navegació.

---

# 6. Estructura mínima de la web

## 6.1 Pàgina principal

La pàgina principal haurà d'incloure:

* Nom de l'empresa o projecte.
* Breu descripció.
* Objectiu de la web.
* Enllaços a les principals seccions.

---

## 6.2 Linux

Com a mínim dues pàgines.

Exemple:

```text
Linux
├── Usuaris i grups
└── Permisos
```

---

## 6.3 Xarxes

Com a mínim dues pàgines.

Exemple:

```text
Xarxes
├── TCP/IP
└── DNS
```

---

## 6.4 Serveis

Com a mínim dues pàgines.

Exemple:

```text
Serveis
├── SSH
└── HTTP
```

---

## 6.5 Blog o articles

Crea com a mínim **tres articles**.

Cada article haurà de contenir:

* Títol.
* Data.
* Autor.
* Contingut original.
* Almenys una imatge o element multimèdia.
* Exemples de comandes quan sigui apropiat.

---

# 7. Markdown

El contingut s'haurà d'escriure principalment en **Markdown**.

Has d'utilitzar:

* Títols i subtítols.
* Llistes.
* **Negreta** i *cursiva*.
* Enllaços.
* Imatges.
* Taules.
* Blocs de codi.

---

# 8. Git i GitHub

El projecte haurà d'estar allotjat en un **repositori de GitHub**.

El nom del repositori haurà de ser identificable.

Exemple:

```text
web-estatica-nom-alumne
````

Durant la pràctica hauràs d'utilitzar, com a mínim:

```bash
git clone
git status
git add
git commit
git push
git pull
```

## 8.1 Historial de commits

L'historial haurà de ser coherent.

**No es considera correcte** fer un únic commit amb tot el projecte al final.

Un exemple d'historial correcte podria ser:

```text
Initial project
       ↓
Add home page
       ↓
Add Linux documentation
       ↓
Add networking documentation
       ↓
Add SSH article
       ↓
Add images
       ↓
Configure theme
       ↓
Configure GitHub Pages
       ↓
Fix navigation
```

Els missatges dels commits han de descriure de manera clara els canvis realitzats.

---

# 9. Generador de webs

Utilitza l'entorn assignat:

* Hugo
* Jekyll
* MkDocs

Consulta la **documentació oficial** de l'eina per resoldre:

* Instal·lació.
* Creació del projecte.
* Configuració.
* Temes.
* Creació de contingut.
* Generació.
* Desplegament.

No es proporcionen tots els passos exactes. Part de la pràctica consisteix a **aprendre a buscar i interpretar documentació tècnica**.

---

# 10. Configuració

La web haurà d'estar configurada amb, com a mínim:

* Títol de la web.
* Descripció.
* Autor.
* Menú de navegació.
* Tema.
* Estructura de continguts.
* URL de la web.

Hauràs de poder explicar la funció dels principals fitxers de configuració del projecte.

Exemples:

```text
Hugo
└── hugo.toml / hugo.yaml / hugo.json

MkDocs
└── mkdocs.yml

Jekyll
└── _config.yml
```

La ubicació i els fitxers concrets poden variar segons la versió i la configuració utilitzada.

---

# 11. Personalització

La web haurà de ser personalitzada.

Com a mínim hauràs de modificar:

* Nom de la web.
* Descripció.
* Menú.
* Continguts.
* Imatges.
* Aspecte visual del tema.

Afegeix almenys **un element de personalització propi**:

* CSS.
* Logo.
* Favicon.
* Configuració avançada del tema.
* Plantilla o component visual.

---

# 12. Generació de la web

Comprova que el generador pot crear correctament la web i identifica la carpeta que conté els fitxers finals.

El procés general és:

```text
Contingut font
      ↓
   Generador
      ↓
Carpeta de sortida
      ↓
 HTML + CSS + JS
```

Hauràs de poder explicar la diferència entre:

### Fitxers font

Són els fitxers que utilitzes per construir la web:

```text
Markdown
Configuració
Plantilles
Imatges
CSS
```

### Fitxers generats

Són els fitxers finals que el navegador utilitza:

```text
HTML
CSS
JavaScript
Imatges
Altres recursos estàtics
```

---

# 13. Publicació amb GitHub Pages

Una vegada la web funcioni localment, publica-la mitjançant **GitHub Pages**.

La web haurà de ser accessible públicament.

L'URL tindrà habitualment una estructura similar a:

```text
https://usuari.github.io/nom-del-repositori/
```

La URL exacta dependrà de la configuració del repositori i de GitHub Pages.

---

# 14. Actualització de la web

Després de publicar la web, modifica una pàgina o afegeix un article.

Envia els canvis amb Git i comprova que la web publicada s'actualitza.

El procés bàsic és:

```text
Modificar
    ↓
git add
    ↓
git commit
    ↓
git push
    ↓
GitHub
    ↓
GitHub Pages
    ↓
Web actualitzada
```

---

# 15. Automatització del desplegament

Investiga com automatitzar la generació i publicació de la web mitjançant **GitHub Actions**.

L'objectiu és que un canvi enviat al repositori pugui iniciar automàticament el procés de construcció i desplegament.

Flux esperat:

```text
Canvi en Markdown
       ↓
    git push
       ↓
     GitHub
       ↓
 GitHub Actions
       ↓
 Instal·lació SSG
       ↓
 Generació de la web
       ↓
 GitHub Pages
       ↓
 Web actualitzada
```

Hauràs d'identificar:

* Què és GitHub Actions.
* Què és un workflow.
* Quan s'executa el workflow.
* Quina eina SSG utilitza.
* Com es genera la web.
* Com es publica a GitHub Pages.

---

# 16. Investigació

La pràctica no proporciona tots els passos exactes.

Has d'aprendre a consultar documentació tècnica i trobar la informació necessària.

Investiga com realitzar:

* Instal·lació de l'eina.
* Creació d'un projecte.
* Configuració.
* Instal·lació i configuració de temes.
* Creació de contingut.
* Generació de la web.
* Publicació a GitHub Pages.
* Automatització amb GitHub Actions.

També hauràs de consultar la documentació dels altres SSG per poder completar la comparativa.

---

# 17. Qüestionari final

Respon les preguntes següents:

1. Què és un **Static Site Generator**?
2. Quina diferència hi ha entre els fitxers Markdown i els fitxers HTML generats?
3. Què és Git?
4. Quina diferència hi ha entre Git i GitHub?
5. Què és GitHub Pages?
6. Què passa quan executes `git push`?
7. Què passa quan modifiques un fitxer Markdown i tornes a generar la web?
8. Quines diferències has trobat entre la teva eina i les altres eines disponibles?
9. Quins avantatges té una web estàtica?
10. En quin tipus de projecte empresarial utilitzaries un generador de webs estàtiques?
11. Quin SSG consideres més adequat per a documentació tècnica? Justifica la resposta.
12. Quin SSG consideres més adequat per a una web corporativa? Justifica la resposta.
13. Quina funció té GitHub Actions?
14. Quins avantatges té automatitzar el desplegament?

---

# 18. Entrega

L'entrega final haurà d'incloure:

```text
Entrega
├── Repositori GitHub
├── Web publicada
├── README.md
└── Memòria breu
```

## 18.1 Repositori GitHub

El repositori haurà de contenir:

* Tot el projecte.
* Fitxers font.
* Configuració de l'SSG.
* Continguts.
* Imatges i recursos.
* Configuració necessària per al desplegament.
* Historial Git coherent.

---

## 18.2 Web publicada

La web haurà d'estar disponible mitjançant GitHub Pages.

---

## 18.3 README.md

El `README.md` haurà d'explicar:

* Nom del projecte.
* Eina utilitzada i versió.
* Comparativa breu amb els altres SSG.
* Motiu de l'elecció de l'eina.
* Procés d'instal·lació.
* Com executar la web localment.
* Com generar la web.
* Com publicar-la.
* Com funciona el desplegament automàtic, si s'ha implementat.
* Estructura del projecte.
* URL de la web publicada.

---

## 18.4 Memòria breu

Inclou una breu explicació de:

* Problemes trobats durant la pràctica.
* Solucions aplicades.
* Decisions de configuració.
* SSG utilitzat.
* Comparació amb els altres SSG.
* Funcionament de GitHub Pages.
* Funcionament del desplegament automàtic, si s'ha implementat.

---

# 19. Criteris importants

No es valorarà únicament que la web funcioni.

També es valorarà que l'alumne:

* Entengui les eines utilitzades.
* Tingui un historial Git correcte.
* Sàpiga explicar el procés.
* Sàpiga buscar informació tècnica.
* Mantingui una estructura ordenada.
* Sigui capaç de solucionar problemes.
* Entengui les diferències entre els diferents SSG.

Una web visualment molt atractiva però que l'alumne no sap explicar **no obtindrà la màxima qualificació**.

---

# 20. Ampliacions opcionals

Pots ampliar el projecte amb:

* Domini personalitzat.
* Favicon.
* Web multidioma.
* Cercador.
* RSS.
* Sitemap.
* `robots.txt`.
* Personalització avançada del tema.
* Formulari de contacte.
* Automatització del desplegament amb GitHub Actions.
* HTTPS i configuració del domini.
* Estadístiques d'accés.
* Optimització SEO.

---

# 22. Repte final

Imagina que treballes com a administrador de sistemes en una empresa que necessita una web de documentació interna amb **centenars de pàgines**.

### Pregunta

**Recomanaries utilitzar un generador de webs estàtiques?**

Justifica la resposta tenint en compte:

* Seguretat.
* Rendiment.
* Manteniment.
* Facilitat d'edició.
* Desplegament.
* Escalabilitat.
* Dependències.
* Cost.

A més, indica quin dels tres SSG estudiats —**Hugo, Jekyll o MkDocs**— triaries per a aquest escenari i justifica la teva elecció.

---

# 23. Entrega final

La pràctica haurà d'incloure:

* **Repositori GitHub**
* **Web publicada amb GitHub Pages**
* **README.md**
* **Memòria breu**
* **Comparativa de SSG**
* **Qüestionari final**

## Resultat esperat

```text
                 ┌──────────────┐
                 │   Markdown   │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │     SSG      │
                 │ Hugo /       │
                 │ MkDocs /     │
                 │ Jekyll       │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │ HTML/CSS/JS  │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │     Git      │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │    GitHub    │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │    Actions   │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │ GitHub Pages │
                 └──────┬───────┘
                        ↓
                 ┌──────────────┐
                 │ Web pública  │
                 └──────────────┘
```

**Objectiu final:** crear una web estàtica professional, gestionar-ne el codi amb Git, allotjar-lo a GitHub, generar-la amb un SSG i publicar-la mitjançant GitHub Pages, entenent tot el procés de principi a fi.
