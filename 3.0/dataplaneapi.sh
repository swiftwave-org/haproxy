# !/bin/sh

# Fetch dataplaneapi socket path
DATAPLANEAPI_SOCKET_PATH=$(grep -oP 'socket_path:\s*\K\S+' /etc/haproxy/dataplaneapi.yaml)
# Remove $DATAPLANEAPI_SOCKET_PATH if it exists
if [ -e $DATAPLANEAPI_SOCKET_PATH ]; then
    rm $DATAPLANEAPI_SOCKET_PATH
fi

# Start the dataplaneapi
/usr/local/bin/dataplaneapi -f /etc/haproxy/dataplaneapi.yaml