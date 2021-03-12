# Couchdb for YunoHost

[![Integration level](https://dash.yunohost.org/integration/couchdb.svg)](https://dash.yunohost.org/appci/app/couchdb) ![](https://ci-apps.yunohost.org/ci/badges/couchdb.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/couchdb.maintain.svg)  
[![Install couchdb with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=couchdb)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install couchdb quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*


## Overview

Couchdb is a database system, where entries are json objects (allowing attachments), and that you can access and synchronize via simple http requests.

As explained in wikipedia:
> Apache CouchDB is an open-source document-oriented NoSQL database, implemented in Erlang.

And as described in the couchdb official website:
> Seamless multi-master sync, that scales from Big Data to Mobile, with an Intuitive HTTP/JSON API and designed for Reliability.

**Shipped version:** 3.1.1


## Screenshots

![](https://upload.wikimedia.org/wikipedia/commons/c/c5/Apache_CouchDB_v2.1.1_Fauxton_Console.png)


## Configuration

You can do most configuration of couchdb from fauxton, the web interface, accessible at the domain you specified: https://domain.tld/_utils/index.html


## Documentation

 * Official documentation: https://docs.couchdb.org/en/stable/index.html


## YunoHost specific features

#### Multi-user support

Couchdb has it's own users management system, so LDAP is not supported.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/couchdb%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/couchdb/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/couchdb%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/couchdb/)


## Limitations

By default this package installs couchdb as single node, if you need a different setup, please contribute with pull requests to improve the package :)


## Links

 * Report a bug: https://github.com/YunoHost-Apps/couchdb_ynh/issues
 * App website: Link to the official website of this app.
 * Upstream app repository: Link to the official repository of the upstream app.
 * YunoHost website: https://yunohost.org/

---


## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
or
sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
```
