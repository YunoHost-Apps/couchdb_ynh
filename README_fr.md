# Couchdb pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)  
[![Installer couchdb avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Read this readme in english.](./README.md)*

> *Ce package vous permet d'installer couchdb rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

Couchdb est un gestionnaire de bases de données dans lesquelles les entrées sont des documents jsons (avec possibilité de pièces jointes), qui peuvent être manipulées par de simples requêtes http.

Comme le présente wikipédia:
> Apache CouchDB est un système de gestion de base de données orienté documents, écrit en langage Erlang et distribué sous licence Apache.
> Conçu pour le Web, il fait partie de la mouvance NoSQL, et a été conçu pour pouvoir être réparti sur une grappe de serveurs.

**Version incluse :** 3.1.1


## Captures d'écran

![](https://upload.wikimedia.org/wikipedia/commons/c/c5/Apache_CouchDB_v2.1.1_Fauxton_Console.png)


## Configuration

Couchdb peut-être configuré via fauxton, l'interface web accessible sur le domaine que vous avez spécifié: https://domain.tld/_utils/index.html


## Documentation

 * Documentation officielle : https://docs.couchdb.org/en/stable/index.html


## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

Couchdb a sa propre gestion d'utilisateurs, donc LDAP n'est pas supporté.

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/couchdb%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/couchdb/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/couchdb%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/couchdb/)


## Limitations

Par défaut, ce paquet install couchdb comme nœud simple. Si vous souhaitez permettre des installations plus avancées les contributions sont bienvenues :)

Il semble qu'il y'ai un conflit entre le cookie du SSO yunohost et celui d'autentification à couchdb, dont le résultat est que couchdb n'est pas accessible pour les utilisateurs s'ils sont loggé dans le SSO. La façon la plus simple d'éviter ce problème est d'installer couchdb sur un domaine différent que le domaine principale de yunohost.


## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/couchdb_ynh/issues
 * Site de l'application : Lien vers le site officiel de cette application.
 * Dépôt de l'application principale : Lien vers le dépôt officiel de l'application principale.
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
ou
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```
