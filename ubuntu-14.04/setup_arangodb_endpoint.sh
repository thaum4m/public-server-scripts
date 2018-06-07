#!/bin/bash

ARANGO_SERVICE="/etc/init.d/arangodb3"

if [ "$#" != 1  ]; then
        echo "Usage: $0 SERVER_IP"
        printf "\nSERVER_IP\tIP address to use as an endpoint for ArangoDB web interface\n"
        exit
fi

$ARANGO_SERVICE stop

arangod --server.endpoint "tcp://$1:8529"

$ARANGO_SERVICE start