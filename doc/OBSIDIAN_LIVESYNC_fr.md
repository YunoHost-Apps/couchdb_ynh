# CouchDB with Obsidian LiveSync

Ce guide détaille comment configurer CouchDB pour fonctionner avec le plugin Obsidian LiveSync.

## Installation recommandée

Pour une meilleure compatibilité avec Obsidian LiveSync et d'autres clients CouchDB, il est recommandé d'installer CouchDB sur le **chemin racine** (`/`) d'un sous-domaine dédié (par exemple, `couchdb.votredomaine.com`). Cela fournit la structure d'URL la plus propre que la plupart des clients CouchDB attendent.

Cependant, l'application fonctionne aussi très bien sur des sous-chemins comme `/couch`.

## Étapes de configuration

### 1. Accéder à l'interface d'administration CouchDB

Après l'installation, accédez à l'interface d'administration CouchDB à :

```url
https://votredomaine.com/_utils/
```

Ou si installé sur un sous-chemin :

```url
https://votredomaine.com/couch/_utils/
```

Utilisez les identifiants d'administration que vous avez définis lors de l'installation.

### 2. Créer une base de données pour Obsidian

1. Connectez-vous à l'interface d'administration CouchDB (Fauxton)
2. Créez une nouvelle base de données (par exemple, `obsidian-vault`)
3. Notez le nom de la base de données pour l'utilisation dans Obsidian

### 3. Configurer le plugin Obsidian LiveSync

Dans les paramètres du plugin Obsidian LiveSync :

- **URI**: `https://votredomaine.com/` (pour le chemin racine) ou `https://votredomaine.com/couch/` (pour le sous-chemin)
- **Nom de la base de données**: La base de données que vous avez créée (par exemple, `obsidian-vault`)
- **Nom d'utilisateur**: Votre nom d'utilisateur administrateur CouchDB
- **Mot de passe**: Votre mot de passe administrateur CouchDB

### 4. Tester la connexion

Le plugin devrait maintenant pouvoir se connecter à votre instance CouchDB. La configuration inclut :

- ✅ En-têtes CORS pour l'accès web
- ✅ Gestion d'authentification appropriée
- ✅ Support des téléchargements de gros fichiers (1GB)
- ✅ Support WebSocket pour la synchronisation en temps réel

## Dépannage

### Problèmes d'authentification

- Assurez-vous d'utiliser les bonnes identifiants d'administration
- Vérifiez que le service CouchDB fonctionne : `sudo systemctl status couchdb`

### Problèmes de connexion

- Vérifiez que le format de l'URL est correct (incluez le `/` final)
- Vérifiez les logs nginx : `sudo tail -f /var/log/nginx/error.log`
- Vérifiez les logs CouchDB : `sudo tail -f /var/log/couchdb/couchdb.log`

### Problèmes CORS

Si vous rencontrez des erreurs CORS :

- La configuration devrait gérer CORS automatiquement
- Essayez d'accéder directement à l'interface CouchDB pour vérifier qu'elle fonctionne

## Notes de sécurité

- Cette configuration désactive le SSO YunoHost pour CouchDB car il entre en conflit avec l'authentification propre de CouchDB
- CouchDB gère son propre système d'authentification et de contrôle d'accès des utilisateurs
- Considérez créer des utilisateurs dédiés pour chaque vault Obsidian au lieu d'utiliser le compte administrateur
