---
title: "Tasca: Creació de taules  mysql DDL Base de dades"
date: 2026-05-25 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, DDL, tasca,practica, mysql]
---

## Informació sobre la tasca

Realitza un dels exercicis de  creació de base de dades, i les preguntes de comprensió

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA

> 📸 Recorda fer captures.
{:.prompt-info}


# Exercicis de Creació de Bases de Dades Relacionals

## Exercici 1 — Base de dades *Farmacia*

Donat el següent model relacional, dissenya i implementa una base de dades anomenada **Farmacia** utilitzant SQL.

Pots decidir els tipus de dades més adequats per a cada atribut. Defineix correctament:

* Claus primàries
* Claus foranes
* Restriccions d’integritat referencial
* Relacions entre taules

### Model relacional

* PACIENT(DNI, Nom, Cognoms)

* METGE(NumCol·legiat, Nom, Cognoms)

* MEDICAMENT(NomComercial, Fórmula)

* TRACTA(DNI, NumCol·legiat, Data)

  * DNI referencia PACIENT(DNI)
  * NumCol·legiat referencia METGE(NumCol·legiat)

* PRESCRIU(DNI, NomComercial, NumCol·legiat, Data, Quantitat)

  * DNI referencia PACIENT(DNI)
  * NomComercial referencia MEDICAMENT(NomComercial)
  * NumCol·legiat referencia METGE(NumCol·legiat)

* FARMACIA(CIF, Adreça)

* VEN(NomComercial, CIF, Preu, Data)

  * NomComercial referencia MEDICAMENT(NomComercial)
  * CIF referencia FARMACIA(CIF)

* FARMACEUTIC(DNI, Nom, Cognoms, AnyLlicenciatura)

* EMPLEA(DNI, CIF)

  * DNI referencia FARMACEUTIC(DNI)
  * CIF referencia FARMACIA(CIF)

---

## Exercici 2 — Base de dades *Bombers*

Donat el següent model relacional, dissenya i implementa una base de dades anomenada **Bombers** utilitzant SQL.

Pots decidir els tipus de dades més adequats per a cada atribut. Defineix correctament les claus primàries, claus foranes i les relacions entre taules.

### Model relacional

* PARC_BOMBERS(CodParc, Adreça, Categoria)

* EQUIP(CodEquip, Nom)

* BOMBER(CodBomber, Nom, Adreça, CodParc, CodCàrrec, CodEquip)

  * CodParc referencia PARC_BOMBERS(CodParc)
  * CodEquip referencia EQUIP(CodEquip)

* TORN(CodTorn, Descripció)

* PERÍODE(DataInici, DataFi)

* TREBALLA_EN(CodBomber, DataInici, DataFi, CodTorn)

  * CodBomber referencia BOMBER(CodBomber)
  * (DataInici, DataFi) referencia PERÍODE(DataInici, DataFi)
  * CodTorn referencia TORN(CodTorn)

* PETICIÓ_SERVEI(CodiPetició, Tipus_Servei, Urgència)

* REP(CodParc, CodPetició, Dia, Hora)

  * CodParc referencia PARC_BOMBERS(CodParc)
  * CodPetició referencia PETICIÓ_SERVEI(CodiPetició)

* COTXE(CodParc, NumCotxe, Model, DataCompra, Data_Ultima_Revisió)

  * CodParc referencia PARC_BOMBERS(CodParc)

---

## Exercici 3 — Base de dades *Agencia_viatges*

Donat el següent model relacional, dissenya i implementa una base de dades anomenada **Agencia_viatges** utilitzant SQL.

Pots decidir els tipus de dades més adequats per a cada atribut i hauràs de definir correctament les claus primàries i foranes.

### Model relacional

* SUCURSAL(CodSuc, Adreça, Telèfon)

* VOL(NumVol, Data, Hora, Origen, Destí, PlacesTur, PlacesTot, CodSuc)

  * CodSuc referencia SUCURSAL(CodSuc)

* HOTEL(CodHot, Nom, Adreça, Ciutat, Telèfon, NumPlaces, CodSuc)

  * CodSuc referencia SUCURSAL(CodSuc)

* TURISTA(CodTur, Nom, Cognoms, Adreça, Telèfon, CodSuc)

  * CodSuc referencia SUCURSAL(CodSuc)

* ALLOTJAMENT(CodTur, DataIni, CodHot, DataSortida, Règim)

  * CodTur referencia TURISTA(CodTur)
  * CodHot referencia HOTEL(CodHot)

* VIATGE(CodTur, NumVol, Classe)

  * CodTur referencia TURISTA(CodTur)
  * NumVol referencia VOL(NumVol)

---

## Exercici 4 — Base de dades *Taller*

Donat el següent model relacional, dissenya i implementa una base de dades anomenada **Taller** utilitzant SQL.

Pots decidir els tipus de dades més adequats per a cada atribut. Defineix correctament totes les claus primàries, claus foranes i relacions entre taules.

### Model relacional

* OPERARI(dni, nom, nss, data_naix)

* APRENENT(dni, data_ini, data_ini_sup, dni_sup)

  * dni referencia OPERARI(dni)
  * dni_sup referencia ESPECIALISTA(dni)

* ESPECIALISTA(dni, anys_exp)

  * dni referencia OPERARI(dni)

* CURS(cod_curs, nom, data_ini)

* EXAMEN(cod_exam, nom_fitxer)

* ÀREA(num_area, loc, sup)

* REPARACIÓ(cod_repar, nom, durada, data_ini, cod_loc)

  * cod_loc referencia LOCOMOTORA(cod_loc)

* TASCA(cod_repar, cod_tasca, nom, descr, durada)

  * cod_repar referencia REPARACIÓ(cod_repar)

* EINA(cod_eina, descr, pes)

* LOCOMOTORA(cod_loc, nom, data_ini)

* PROVEÏDOR(nom_prov)

* RECANVI(cod_recanvi, descr, nom_prov)

  * nom_prov referencia PROVEÏDOR(nom_prov)

* ASSIGNACIÓ(num_area, dni, cod_repar, cod_tasca, hores)

  * num_area referencia ÀREA(num_area)
  * dni referencia OPERARI(dni)
  * (cod_repar, cod_tasca) referencia TASCA(cod_repar, cod_tasca)

* AVALUACIÓ(dni, cod_exam, cod_curs, nota)

  * dni referencia APRENENT(dni)
  * cod_exam referencia EXAMEN(cod_exam)
  * cod_curs referencia CURS(cod_curs)

* FA_SERVIR(cod_repar, cod_tasca, cod_eina, data_ini, data_fi)

  * (cod_repar, cod_tasca) referencia TASCA(cod_repar, cod_tasca)
  * cod_eina referencia EINA(cod_eina)

* UTILITZACIÓ(cod_repar, cod_recanvi, unitats)

  * cod_repar referencia REPARACIÓ(cod_repar)
  * cod_recanvi referencia RECANVI(cod_recanvi)

---

## Requisits generals

Per a tots els exercicis:

1. Crear la base de dades corresponent.
2. Crear totes les taules necessàries.
3. Definir correctament les claus primàries.
4. Definir totes les claus foranes.
5. Escollir tipus de dades coherents per a cada atribut.
6. Aplicar restriccions d’integritat quan sigui necessari.
7. Escriure el codi SQL ordenat i ben documentat.



#  Preguntes de comprensió — MySQL (Claus i constraints)

---

##  1. Claus i relacions

- Explica amb les teves paraules què és una clau primària i per què és important en una base de dades.
- Quina diferència hi ha entre una clau primària i una clau forana?
- Què vol dir que dues taules estiguin relacionades?
- Per què no es poden posar valors duplicats en una clau primària?

---

## 2. Clau primària composta

- Què és una clau primària composta i en quin tipus de taules s’utilitza?
- Dona un exemple real on tinguis sentit utilitzar una clau composta.

---

## 3. FOREIGN KEY i integritat referencial

- Què passa si intentes inserir una fila amb una clau forana que no existeix a la taula pare?
- Explica què és la integritat referencial amb les teves paraules.
- Per què una FOREIGN KEY millora la qualitat de les dades?

---

## 4. ON DELETE / ON UPDATE

- Explica què fa `ON DELETE CASCADE` amb un exemple.
- Què passaria si NO existís cap `ON DELETE CASCADE` en una relació pare-fill?
- En quin cas utilitzaries `ON DELETE RESTRICT`?

---

## 5. CONSTRAINTS

- Què és una constraint en MySQL?
- Per què és útil posar nom a una constraint?
- Quina diferència hi ha entre:
  - CHECK
  - NOT NULL
  - UNIQUE
- Explica un exemple real d’ús de `CHECK`.
- Què passa si intentes inserir un valor que no compleix un `CHECK`?

---

## 6. Raonament SQL

- Per què és millor utilitzar constraints que no pas confiar només en l’aplicació (programa)?
- Quins problemes poden aparèixer si no hi ha FOREIGN KEYS en una base de dades?
- Explica què passaria si dues taules relacionades no tenen cap restricció d’integritat.

---

## 7. Reflexió final

- Què és el més important que garanteix una base de dades ben dissenyada?
- Quina és la diferència entre “guardar dades” i “garantir dades correctes”?
