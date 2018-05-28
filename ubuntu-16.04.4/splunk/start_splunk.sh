#!/bin/bash

SPLUNK_HOME="/opt/splunk"

if [ "$#" != 1  ]; then
	echo "Usage: $0 SERVER_IP"
	printf "\nSERVER_IP\tIP address to use as an endpoint for Splunk\n"
	exit
fi

export SPLUNK_BINDIP="$1"

"$SPLUNK_HOME/bin/splunk" stop
"$SPLUNK_HOME/bin/splunk" start
