#!/bin/sh
set -e

# check if ADMIN_USER and ADMIN_PASSWORD are set, else set admin/admin
if [ -z "$ADMIN_USER" ]; then
    ADMIN_USER=admin
fi
if [ -z "$ADMIN_PASSWORD" ]; then
    ADMIN_PASSWORD=admin
fi

# update `dataplaneapi.yml` $username and $password with ADMIN_USER and ADMIN_PASSWORD
sed -i "s/ADMIN_USERNAME/$ADMIN_USER/g" /etc/haproxy/dataplaneapi.yaml
sed -i "s/ADMIN_PASSWORD/$ADMIN_PASSWORD/g" /etc/haproxy/dataplaneapi.yaml