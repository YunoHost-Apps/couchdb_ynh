# Using CouchDB with Obsidian LiveSync

This CouchDB YunoHost app has been configured to work properly with the Obsidian LiveSync plugin.

## Installation Recommendation

For best compatibility with Obsidian LiveSync and other CouchDB clients, it's recommended to install CouchDB on the **root path** (`/`) of a dedicated subdomain (e.g., `couchdb.yourdomain.com`). This provides the cleanest URL structure that most CouchDB clients expect.

However, the app also works fine on sub-paths like `/couch`.

## Setup Steps

### 1. Access CouchDB Admin Interface

After installation, access the CouchDB admin interface at:

```url
https://yourdomain.com/_utils/
```

Or if installed on a sub-path:

```url
https://yourdomain.com/couch/_utils/
```

Use the admin credentials you set during installation.

### 2. Create Database for Obsidian

1. Log into the CouchDB admin interface (Fauxton)
2. Create a new database (e.g., `obsidian-vault`)
3. Note the database name for use in Obsidian

### 3. Configure Obsidian LiveSync Plugin

In Obsidian LiveSync plugin settings:

- **URI**: `https://yourdomain.com/` (for root path) or `https://yourdomain.com/couch/` (for sub-path)
- **Database name**: The database you created (e.g., `obsidian-vault`)
- **Username**: Your CouchDB admin username
- **Password**: Your CouchDB admin password

### 4. Test Connection

The plugin should now be able to connect to your CouchDB instance. The configuration includes:

- ✅ CORS headers for web access
- ✅ Proper authentication handling
- ✅ Large file upload support (1GB)
- ✅ WebSocket support for real-time sync

## Troubleshooting

### Authentication Issues

- Ensure you're using the correct admin credentials
- Check that the CouchDB service is running: `sudo systemctl status couchdb`

### Connection Issues

- Verify the URL format is correct (include the trailing `/`)
- Check nginx logs: `sudo tail -f /var/log/nginx/error.log`
- Check CouchDB logs: `sudo tail -f /var/log/couchdb/couchdb.log`

### CORS Issues

If you encounter CORS errors:

- The configuration should handle CORS automatically
- Try accessing the CouchDB interface directly to verify it's working

## Security Notes

- This setup disables YunoHost SSO for CouchDB as it conflicts with CouchDB's own authentication
- CouchDB handles its own user authentication and access control
- Consider creating dedicated users for each Obsidian vault instead of using the admin account
