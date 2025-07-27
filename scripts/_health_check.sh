#!/bin/bash

# Simple CouchDB health check script
# This can be used to verify CouchDB is working properly after installation

# Get app settings
app=$YNH_APP_INSTANCE_NAME
port=$(ynh_app_setting_get --app=$app --key=port)
password=$(ynh_app_setting_get --app=$app --key=password)

echo "=== CouchDB Health Check ==="
echo "App: $app"
echo "Port: $port"
echo ""

# Check if CouchDB service is running
echo "Checking CouchDB service status..."
if systemctl is-active --quiet couchdb; then
    echo "✅ CouchDB service is running"
else
    echo "❌ CouchDB service is not running"
    exit 1
fi

# Check if CouchDB is responding on the port
echo "Checking CouchDB API response..."
if curl -s "http://127.0.0.1:$port/" > /dev/null; then
    echo "✅ CouchDB is responding on port $port"
    
    # Get CouchDB version info
    version_info=$(curl -s "http://127.0.0.1:$port/" | head -1)
    echo "CouchDB info: $version_info"
else
    echo "❌ CouchDB is not responding on port $port"
    exit 1
fi

# Check if system databases exist
echo "Checking system databases..."
if curl -s "http://admin:$password@127.0.0.1:$port/_users" > /dev/null; then
    echo "✅ _users database exists"
else
    echo "⚠️  _users database does not exist - creating it..."
    curl -X PUT "http://admin:$password@127.0.0.1:$port/_users" > /dev/null 2>&1
fi

if curl -s "http://admin:$password@127.0.0.1:$port/_replicator" > /dev/null; then
    echo "✅ _replicator database exists"
else
    echo "⚠️  _replicator database does not exist - creating it..."
    curl -X PUT "http://admin:$password@127.0.0.1:$port/_replicator" > /dev/null 2>&1
fi

echo ""
echo "=== Health Check Complete ==="
echo "CouchDB appears to be working correctly!"
