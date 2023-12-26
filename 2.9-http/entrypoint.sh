#!/bin/sh
set -e

# Check if `SWIFTWAVE_SERVICE_ENDPOINT` is set, else exit
if [ -z "$SWIFTWAVE_SERVICE_ENDPOINT" ]; then
    echo "SWIFTWAVE_SERVICE_ENDPOINT environment variable is not set"
    echo "Set this environment variable to the endpoint of the SwiftWave service"
    echo "You need to provide a IP which is reachable from outside the server"
    echo "It's safe to set public IP/domain with port of the swiftwave server"
    echo "Exiting..."
    exit 1
fi

# Run default entrypoint.sh
./docker-entrypoint.sh "$@"