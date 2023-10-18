#!/bin/bash

echo "Cleanup metadata.sqlite.db"
rm -rf metadata.sqlite.db

echo "Starting MLMD store server.."
docker run -p 8080:8080 --env METADATA_STORE_SERVER_CONFIG_FILE=/tmp/shared/conn_config.pb --volume ./:/tmp/shared --name mlmd-server 7eb57eef7902
