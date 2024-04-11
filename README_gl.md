<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# CouchDB para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)

[![Instalar CouchDB con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar CouchDB de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Couchdb is a database system, where entries are json objects (allowing attachments), and that you can access and synchronize via simple http requests.

As explained in wikipedia:
> Apache CouchDB is an open-source document-oriented NoSQL database, implemented in Erlang.

And as described in the couchdb official website:
> Seamless multi-master sync, that scales from Big Data to Mobile, with an Intuitive HTTP/JSON API and designed for Reliability.


**Versión proporcionada:** 3.2.2~ynh3

## Capturas de pantalla

![Captura de pantalla de CouchDB](./doc/screenshots/Apache_CouchDB_v2.1.1_Fauxton_Console.png)

## Documentación e recursos

- Web oficial da app: <https://couchdb.apache.org/>
- Documentación oficial para admin: <https://docs.couchdb.org/en/stable/>
- Repositorio de orixe do código: <https://github.com/apache/couchdb>
- Tenda YunoHost: <https://apps.yunohost.org/app/couchdb>
- Informar dun problema: <https://github.com/YunoHost-Apps/couchdb_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
ou
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
