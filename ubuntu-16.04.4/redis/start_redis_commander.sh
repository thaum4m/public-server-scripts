#!/bin/bash

REDIS_COMMANDER_PORT=8081
REDIS_COMMANDER_USERNAME=admin
REDIS_COMMANDER_PASSWORD=redis
REDIS_SERVER_IP=127.0.0.1
REDIS_SERVER_PORT=6379

if [ "$#" != 1  ]; then
	echo "Usage: $0 SERVER_IP"
	printf "\nSERVER_IP\tIP address to use as an endpoint for Redis Commander\n"
	exit
fi

pm2 start redis-commander -- --redis-host $REDIS_SERVER_IP --redis-port $REDIS_SERVER_PORT -a $1 --http-u $REDIS_COMMANDER_USERNAME --http-p $REDIS_COMMANDER_PASSWORD
