<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# CouchDB pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)

[![Installer CouchDB avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer CouchDB rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Couchdb est un gestionnaire de bases de données dans lesquelles les entrées sont des documents jsons (avec possibilité de pièces jointes), qui peuvent être manipulées par de simples requêtes http.

Comme le présente wikipédia:
> Apache CouchDB est un système de gestion de base de données orienté documents, écrit en langage Erlang et distribué sous licence Apache.
> Conçu pour le Web, il fait partie de la mouvance NoSQL, et a été conçu pour pouvoir être réparti sur une grappe de serveurs.


**Version incluse :** 3.2.2~ynh3

## Captures d’écran

![Capture d’écran de CouchDB](./doc/screenshots/Apache_CouchDB_v2.1.1_Fauxton_Console.png)

## Documentations et ressources

- Site officiel de l’app : <https://couchdb.apache.org/>
- Documentation officielle de l’admin : <https://docs.couchdb.org/en/stable/>
- Dépôt de code officiel de l’app : <https://github.com/apache/couchdb>
- YunoHost Store : <https://apps.yunohost.org/app/couchdb>
- Signaler un bug : <https://github.com/YunoHost-Apps/couchdb_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
ou
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
