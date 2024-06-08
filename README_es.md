<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# CouchDB para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)

[![Instalar CouchDB con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarCouchDB rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Couchdb is a database system, where entries are json objects (allowing attachments), and that you can access and synchronize via simple http requests.

As explained in wikipedia:
> Apache CouchDB is an open-source document-oriented NoSQL database, implemented in Erlang.

And as described in the couchdb official website:
> Seamless multi-master sync, that scales from Big Data to Mobile, with an Intuitive HTTP/JSON API and designed for Reliability.


**Versión actual:** 3.2.2~ynh3

## Capturas

![Captura de CouchDB](./doc/screenshots/Apache_CouchDB_v2.1.1_Fauxton_Console.png)

## Documentaciones y recursos

- Sitio web oficial: <https://couchdb.apache.org/>
- Documentación administrador oficial: <https://docs.couchdb.org/en/stable/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/apache/couchdb>
- Catálogo YunoHost: <https://apps.yunohost.org/app/couchdb>
- Reportar un error: <https://github.com/YunoHost-Apps/couchdb_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
o
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
