---
title: "Manual YAML "
date: 2026-10-01 9:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Llenguatge de Marques]
tags: [Administració de Sistemes Informàtics en Xarxa, Administració de sistemes gestors de bases de dades, ASIX, FP, Llenguatge, Marques, YAML]
---
# Manual de YAML

## 1. Introducció a YAML

YAML és un format de serialització de dades llegible per les persones, dissenyat per representar informació de manera clara i estructurada mitjançant fitxers de text pla.

S'utilitza habitualment per definir configuracions d'aplicacions, descriure estructures de dades i intercanviar informació entre sistemes.

El nom YAML prové de *YAML Ain't Markup Language* (YAML no és un llenguatge de marcatge).

Alguns exemples d'eines i tecnologies que utilitzen YAML són:

- Kubernetes, per definir recursos com ara *pods*, *deployments* i serveis.
- Docker Compose, per descriure aplicacions formades per diversos contenidors.
- GitHub Actions, per definir fluxos de treball automatitzats.
- Ansible, per descriure tasques d'administració i automatització de sistemes.

YAML és un superconjunt de JSON: qualsevol document JSON vàlid també és un document YAML vàlid.

## 2. Regles bàsiques

Abans de començar a escriure fitxers YAML, cal conèixer algunes regles fonamentals.

### 2.1. Fitxers de text pla

Els documents YAML són fitxers de text pla. Habitualment, utilitzen l'extensió `.yaml` o `.yml`.

Per exemple:

```text
configuracio.yaml
```

Es poden editar amb qualsevol editor de text, tot i que és recomanable utilitzar-ne un que ofereixi ressaltat de sintaxi.

### 2.2. Codificació

És recomanable utilitzar la codificació UTF-8 per evitar problemes amb caràcters especials i accents.

### 2.3. Indentació

La indentació determina l'estructura jeràrquica del document.

**No s'han d'utilitzar mai tabulacions per indentar.** Cal fer servir espais.

Per exemple:

```yaml
aplicacio:
  nom: exemple
  versio: "1.0"
```

En aquest cas, `nom` i `versio` són propietats de `aplicacio`.

La quantitat d'espais pot variar, però cal mantenir una indentació coherent. Habitualment, es fan servir dos espais per nivell.

### 2.4. Comentaris

Qualsevol text que comenci amb `#` fora d'una cadena de text es considera un comentari i no forma part de les dades.

```yaml
# Configuració de l'aplicació
nom: exemple
versio: "1.0"  # Versió actual
```

Els comentaris són útils per documentar les opcions de configuració.

## 3. Tipus de dades bàsics

YAML permet representar diferents tipus de dades.

### 3.1. Cadenes de text

Les cadenes de text representen valors textuals.

```yaml
nom: Maria
ciutat: Barcelona
descripcio: Exemple de configuració
```

Les cometes no són obligatòries en tots els casos, però poden ser necessàries per evitar interpretacions incorrectes.

```yaml
missatge: "Hola, món!"
codi: "00123"
```

Les cometes són especialment útils quan es vol conservar un valor com a text, encara que sembli un nombre.

YAML admet cometes simples i dobles:

```yaml
text1: 'Text amb cometes simples'
text2: "Text amb cometes dobles"
```

Les cometes dobles permeten representar determinades seqüències d'escapament, com ara `\n` per indicar un salt de línia.

### 3.2. Nombres

Els nombres enters i decimals es poden escriure sense cometes.

```yaml
edat: 30
temperatura: 21.5
quantitat: -4
```

Si s'escriu un nombre entre cometes, normalment es tracta com una cadena de text.

```yaml
nombre: 42
text: "42"
```

### 3.3. Valors booleans

Els valors booleans representen un estat vertader o fals.

```yaml
activat: true
desactivat: false
```

És recomanable utilitzar `true` i `false` per evitar ambigüitats entre diferents parsers YAML.

### 3.4. Valors nuls

El valor `null` representa l'absència d'un valor.

```yaml
usuari: null
```

També es pot representar amb `~`, tot i que `null` sol ser més llegible.

### 3.5. Altres valors

YAML també permet representar dates, hores i altres tipus de dades segons la versió de l'especificació i el parser utilitzat.

```yaml
data: 2026-10-12
```

Quan es necessita conservar exactament una data com a text, es pot escriure entre cometes:

```yaml
data: "2026-10-12"
```

## 4. Mapes o diccionaris

Un mapa és una estructura que associa claus amb valors. També es coneix com a diccionari o conjunt de parelles clau-valor.

És una de les estructures fonamentals de YAML.

```yaml
nom: Maria
edat: 30
ciutat: Barcelona
```

En aquest exemple hi ha tres parelles clau-valor:

- `nom`: `Maria`
- `edat`: `30`
- `ciutat`: `Barcelona`

Cada clau identifica el valor que té associat.

Les claus d'un mateix mapa han de ser úniques. L'ordre de les claus no és significatiu en un mapa YAML.

### 4.1. Mapes niats

Un mapa pot contenir altres mapes. Això permet representar informació jeràrquica.

```yaml
usuari:
  nom: Maria
  edat: 30
  adreca:
    carrer: Major
    ciutat: Barcelona
    codi_postal: "08001"
```

En aquest exemple:

- `usuari` conté un mapa.
- `adreca` és un mapa dins de `usuari`.
- `carrer`, `ciutat` i `codi_postal` són propietats d'`adreca`.

La indentació és la que determina aquesta relació jeràrquica.

## 5. Llistes

Una llista és una col·lecció ordenada d'elements. Cada element va precedit d'un guió (`-`).

```yaml
fruites:
  - poma
  - pera
  - taronja
```

En aquest exemple, `fruites` és una clau associada a una llista de tres elements.

L'ordre dels elements és significatiu: la poma apareix abans que la pera, i la pera abans que la taronja.

### 5.1. Llistes de nombres

Les llistes poden contenir nombres o altres tipus de dades.

```yaml
ports:
  - 8080
  - 8081
  - 9000
```

### 5.2. Llistes de mapes

Cada element d'una llista també pot ser un mapa.

```yaml
usuaris:
  - nom: Maria
    edat: 30
  - nom: Joan
    edat: 25
  - nom: Anna
    edat: 28
```

En aquest cas, `usuaris` és una llista de tres elements, cadascun dels quals conté les propietats `nom` i `edat`.

Cal mantenir una indentació coherent perquè les propietats pertanyin a l'element correcte.

### 5.3. Llistes niades

Una llista pot contenir altres llistes.

```yaml
matriu:
  - - 1
    - 2
  - - 3
    - 4
```

Aquesta estructura representa una llista de dues llistes:

- Primera llista: `1`, `2`
- Segona llista: `3`, `4`

## 6. Combinació de mapes i llistes

Els mapes i les llistes es poden combinar per representar estructures complexes.

```yaml
aplicacio:
  nom: botiga
  versio: "1.0"
  activa: true
  serveis:
    - nom: web
      port: 8080
      actiu: true
    - nom: api
      port: 9000
      actiu: true
  administradors:
    - Maria
    - Joan
```

En aquest exemple:

- `aplicacio` és un mapa.
- `serveis` és una llista de mapes.
- Cada servei té un nom, un port i un indicador d'estat.
- `administradors` és una llista de cadenes de text.

Aquesta combinació permet descriure pràcticament qualsevol estructura de dades habitual en fitxers de configuració.

## 7. Cadenes de text en diverses línies

YAML disposa de dos operadors especialment útils per representar textos llargs: `|` i `>`.

### 7.1. Operador `|`

L'operador `|` conserva els salts de línia del text.

```yaml
descripcio: |
  Aquesta és una descripció
  que ocupa diverses línies.
  Cada línia es conserva
  en el text resultant.
```

És útil per a descripcions, missatges o blocs de text en què cal mantenir els salts de línia.

### 7.2. Operador `>`

L'operador `>` agrupa habitualment les línies en un únic paràgraf.

```yaml
descripcio: >
  Aquest text està escrit
  en diverses línies,
  però es tracta com
  un únic paràgraf.
```

Els salts de línia entre les línies normals es transformen generalment en espais. Les línies en blanc poden conservar separacions entre paràgrafs.

## 8. Documents YAML

Un fitxer YAML pot contenir un document o diversos documents.

### 8.1. Inici d'un document

La seqüència `---` indica l'inici d'un document YAML.

```yaml
---
nom: aplicacio
versio: "1.0"
```

En un fitxer amb un sol document, aquest separador és opcional.

### 8.2. Diversos documents en un mateix fitxer

Es poden incloure diversos documents YAML en un mateix fitxer utilitzant `---` com a separador.

```yaml
---
nom: aplicacio-web
tipus: web

---
nom: aplicacio-api
tipus: api
```

Això permet agrupar configuracions relacionades en un únic fitxer quan l'eina que les consumeix ho admet.

## 9. Àncores i àlies

YAML permet reutilitzar parts d'una estructura amb àncores i àlies.

- `&` defineix una àncora.
- `*` fa referència a una àncora existent.

```yaml
configuracio_base: &base
  idioma: ca
  registre: info

aplicacio:
  configuracio: *base
```

En aquest exemple, `&base` identifica un mapa que es pot referenciar posteriorment amb `*base`.

Les àncores i els àlies poden reduir la duplicació de dades en fitxers amb configuracions repetitives. El suport i el comportament exacte s'han de comprovar en el parser o l'eina utilitzats.

## 10. Bones pràctiques

Per crear fitxers YAML fàcils de llegir i mantenir, és recomanable seguir aquestes pautes:

1. **Utilitza UTF-8.** És una codificació adequada per als fitxers de configuració.
2. **No utilitzis tabulacions.** Fes servir espais per a la indentació.
3. **Mantén una indentació coherent.** Dos espais per nivell són una convenció habitual.
4. **Utilitza noms de claus descriptius.** Faciliten la comprensió de l'estructura.
5. **Afegeix comentaris quan siguin útils.** Explica les opcions que no siguin evidents.
6. **Utilitza cometes quan hi hagi ambigüitat.** Per exemple, per conservar codis com `"00123"` com a text.
7. **Evita claus duplicades.** Poden provocar errors o resultats diferents segons el parser.
8. **Valida els fitxers.** Un fitxer que sembla correcte visualment pot contenir errors de sintaxi o no complir l'esquema esperat per l'aplicació.

## 11. Resum

Les estructures principals de YAML són:

- **Mapes:** associacions de claus i valors.
- **Llistes:** col·leccions ordenades d'elements.
- **Valors simples:** cadenes de text, nombres, booleans i valors nuls.
- **Estructures niades:** combinacions de mapes i llistes.
- **Textos multilínia:** representats amb els operadors `|` i `>`.
- **Documents múltiples:** separats amb `---`.
- **Àncores i àlies:** mecanismes per reutilitzar estructures.

La clau per entendre YAML és dominar els mapes, les llistes i la indentació. Amb aquests conceptes, es poden llegir i crear fitxers de configuració per a una gran varietat d'aplicacions i eines.