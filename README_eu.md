<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# CouchDB YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)

[![Instalatu CouchDB YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek CouchDB YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Couchdb is a database system, where entries are json objects (allowing attachments), and that you can access and synchronize via simple http requests.

As explained in wikipedia:
> Apache CouchDB is an open-source document-oriented NoSQL database, implemented in Erlang.

And as described in the couchdb official website:
> Seamless multi-master sync, that scales from Big Data to Mobile, with an Intuitive HTTP/JSON API and designed for Reliability.


**Paketatutako bertsioa:** 3.2.2~ynh3

## Pantaila-argazkiak

![CouchDB(r)en pantaila-argazkia](./doc/screenshots/Apache_CouchDB_v2.1.1_Fauxton_Console.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://couchdb.apache.org/>
- Administratzaileen dokumentazio ofiziala: <https://docs.couchdb.org/en/stable/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/apache/couchdb>
- YunoHost Denda: <https://apps.yunohost.org/app/couchdb>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/couchdb_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
edo
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
