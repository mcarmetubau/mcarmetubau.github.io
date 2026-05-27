---
title: "Tasca: Exercicis DML Base de dades"
date: 2026-05-19 10:00:00 +0100
categories: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades]
tags: [Administració de Sistemes Informàtics en Xarxa, Gestió de Bases de Dades, ASIX, FP, Dades, BBDD, Tasca, Pràctica, DML, mysql]
---

## Informació sobre la tasca

El lliurament serà en format PDF. Llegir [Lliurament i presentació de tasques](/posts/entrega-presentacio-tasques/).

La tasca es qualifica amb una nota d'APTE (10) o NO APTE (0).

Durada activitats obligatòries: 6 hores.

RA5.

Abans de començar és recomenable revisar el contingut del següent enllaç [Apunts DML insert-update-delete](/posts/apunts-dml-insert-update/)
> 📸 Recorda fer captures.
{:.prompt-info}


# Exercicis pràctics DML

## 1 Botiga d’informàtica

Cal crear i carregar la base de dades botiga, que trobareu al següent enllaç [Base de dades MySql Botiga](/assets/botiga_sql/botiga.sql)

1. Inseriu un nou fabricant indicant-ne el codi i el nom.

2. Inseriu un nou fabricant indicant només el nom.

3. Inseriu un nou producte associat a un dels nous fabricants. La sentència d’inserció ha d’incloure:
   - codi
   - nom
   - preu
   - `codi_fabricant`

4. Inseriu un nou producte associat a un dels nous fabricants. La sentència d’inserció ha d’incloure:
   - nom
   - preu
   - `codi_fabricant`

5. Creeu una nova taula amb el nom `fabricant_productes` que tingui les columnes següents:
   - `nom_fabricant`
   - `nom_producte`
   - `preu`

   Un cop creada la taula, inseriu-hi tots els registres de la base de dades `botiga` fent servir una única operació d’inserció.

6. Elimineu el fabricant Asus. És possible eliminar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués esborrar?

7. Elimineu el fabricant Xiaomi. És possible eliminar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués esborrar?

8. Actualitzeu el codi del fabricant Lenovo i assigneu-li el valor 20. És possible actualitzar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués actualitzar?

9. Actualitzeu el codi del fabricant Huawei i assigneu-li el valor 30. És possible actualitzar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués actualitzar?

10. Actualitzeu el preu de tots els productes sumant-hi 5 € al preu actual.

11. Elimineu totes les impressores que tinguin un preu inferior a 200 €.

---

## 2 Empleats

Cal crear i carregar la base de dades botiga, que trobareu al següent enllaç [Base de dades MySql Empleats](/assets/empleats_sql/empleats.sql)

Realitzeu les operacions següents sobre la base de dades `empleats`.

1. Inseriu un nou departament indicant-ne el codi, el nom i el pressupost.

2. Inseriu un nou departament indicant-ne el nom i el pressupost.

3. Inseriu un nou departament indicant-ne el codi, el nom, el pressupost i les despeses.

4. Inseriu un nou empleat associat a un dels nous departaments. La sentència d’inserció ha d’incloure:
   - codi
   - NIF
   - nom
   - primer cognom
   - segon cognom
   - `codi_departament`

5. Inseriu un nou empleat associat a un dels nous departaments. La sentència d’inserció ha d’incloure:
   - NIF
   - nom
   - primer cognom
   - segon cognom
   - `codi_departament`

6. Creeu una nova taula amb el nom `copia_seguretat_departament` que tingui les mateixes columnes que la taula `departament`. Un cop creada, copieu-hi totes les files de la taula `departament`.

7. Elimineu el departament Projectes. És possible eliminar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués esborrar?

8. Elimineu el departament Desenvolupament. És possible eliminar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués esborrar?

9. Actualitzeu el codi del departament Recursos Humans i assigneu-li el valor 30. És possible actualitzar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués actualitzar?

10. Actualitzeu el codi del departament Publicitat i assigneu-li el valor 40. És possible actualitzar-lo? Si no fos possible, quins canvis hauríeu de fer perquè es pogués actualitzar?

11. Actualitzeu el pressupost dels departaments sumant-hi 50.000 € al pressupost actual, només als departaments que tinguin un pressupost inferior a 20.000 €.

12. Realitzeu una transacció que elimini tots els empleats que no tinguin un departament associat.

---

## 3 Jardineria

Cal crear i carregar la base de dades `jardineria`, que trobareu al següent enllaç [Base de dades MySql Jardineria](/assets/jardineria_sql/jardineria.sql)

1. Inseriu una nova oficina a Almeria.

2. Inseriu un empleat per a l’oficina d’Almeria que sigui representant de vendes.

3. Inseriu un client que tingui com a representant de vendes l’empleat creat en el pas anterior.

4. Inseriu una comanda per al client que acabeu de crear, que contingui almenys dos productes diferents.

5. Actualitzeu el codi del client que hem creat en el pas anterior i esbrineu si hi ha hagut canvis a les taules relacionades.

6. Esborreu el client i esbrineu si hi ha hagut canvis a les taules relacionades.

7. Elimineu els clients que no hagin fet cap comanda.

8. Incrementeu un 20% el preu dels productes que no tinguin comandes.

9. Esborreu els pagaments del client amb el límit de crèdit més baix.

10. Establiu a 0 el límit de crèdit del client que tingui menys unitats demanades del producte `11679`.

11. Modifiqueu la taula `detall_comanda` per afegir-hi un camp numèric anomenat `iva`. Mitjançant una transacció:
   - establiu el valor d’aquest camp a 18 per als registres amb comandes de data posterior a gener de 2009;
   - després, actualitzeu la resta de comandes establint l’IVA al 21.

12. Modifiqueu la taula `detall_comanda` per incorporar-hi un camp numèric anomenat `total_linia` i actualitzeu tots els registres calculant-ne el valor amb la fórmula següent:

```text
total_linia = preu_unitat * quantitat * (1 + (iva / 100));
```

13. Esborreu el client amb el límit de crèdit més baix. És possible esborrar-lo amb una sola consulta? Per què?

14. Inseriu una oficina amb seu a Granada i tres empleats que siguin representants de vendes.

15. Inseriu tres clients que tinguin com a representants de vendes els empleats creats en el pas anterior.

16. Realitzeu una transacció que insereixi una comanda per a cadascun dels clients. Cada comanda ha d’incloure dos productes.

17. Esborreu un dels clients i comproveu si hi ha hagut canvis a les taules relacionades. Si no n’hi ha hagut, modifiqueu les taules necessàries establint la clau forana amb la clàusula `ON DELETE CASCADE`.

18. Realitzeu una transacció que faci els pagaments de les comandes realitzades pels clients de l’exercici anterior.