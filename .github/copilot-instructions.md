# CouchDB YunoHost Package – Copilot Instructions

## Project Overview
This is a YunoHost v2 packaging app for Apache CouchDB, tailored for Obsidian LiveSync compatibility. It intentionally bypasses YunoHost SSO to preserve CouchDB's own authentication and supports web-based document sync workflows.

## Architecture & Key Components
- **Scripts** (`scripts/`):
  - `install`: Main install logic, debconf preseeding, CouchDB setup
  - `remove`: Service cleanup, config removal
  - `upgrade`: Handles package/app upgrades
  - `backup`/`restore`: Full state preservation, requires CouchDB reinstall for system integration
  - `change_url`: Updates nginx config for URL changes
- **Config Files** (`conf/`):
  - `nginx.conf`: Disables SSO, preserves `Authorization` header for CouchDB auth
  - `couch_ynh.ini`: CORS (wildcard), large file support (1GB), security restrictions
- **Manifest** (`manifest.toml`): YunoHost v2 format, defines install/data dirs, port (default 5984), permissions, and apt dependencies

## Critical Patterns & Conventions
- **Debconf Preseeding**: All scripts use identical blocks for CouchDB setup:
  ```bash
  echo "couchdb couchdb/mode select standalone
  couchdb couchdb/adminpass password $password" | debconf-set-selections
  ```
- **Resource Management**:
  - Install dir: `/opt/couchdb` (see `manifest.toml`)
  - Data dir: Managed by YunoHost resources
  - Port: 5984 (configurable)
- **Obsidian LiveSync Optimizations**:
  - CORS enabled (wildcard)
  - Large file uploads (1GB)
  - WebSocket support
  - Admin-only DB listing
- **Authentication**: Nginx config disables SSO (`auth_request off`) and preserves `Authorization` header for CouchDB's own auth system.

## Integration Points & External Dependencies
- **APT repo**: `https://apache.jfrog.io/artifactory/couchdb-deb/` (see `manifest.toml` comments)
- **GPG key**: Used for package authenticity
- **Fail2Ban**: Monitors CouchDB auth failures via custom regex
- **YunoHost service system**: Registers CouchDB, exposes port, manages logs
- **Logrotate**: Manages CouchDB log files

## Developer Workflows
- **Install from testing branch**:
  ```bash
  sudo yunohost app install https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
  ```
- **Upgrade to testing version**:
  ```bash
  sudo yunohost app upgrade couchdb -u https://github.com/YunoHost-Apps/couchdb_ynh/tree/testing --debug
  ```
- **Debugging**:
  - Check CouchDB service: `sudo systemctl status couchdb`
  - View logs: `sudo tail -f /var/log/couchdb/couchdb.log`
  - Nginx proxy logs: `sudo tail -f /var/log/nginx/error.log`
  - Test CouchDB directly: `curl -X GET http://127.0.0.1:5984/`

## Common Gotchas
- Never enable YunoHost SSO (breaks CouchDB auth)
- `_common.sh` is minimal; most logic is in individual scripts
- Backup/restore scripts must reinstall CouchDB for system integration
- URL changes only require nginx config updates (CouchDB binds to localhost)
