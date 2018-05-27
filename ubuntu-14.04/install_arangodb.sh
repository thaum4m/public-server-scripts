#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DOWNLOAD_URL="https://download.arangodb.com/arangodb33/xUbuntu_14.04"

cd "$DIR"
curl -OL "$DOWNLOAD_URL/Release.key"
sudo apt-key add - < Release.key
rm "Release.key"

echo "deb $DOWNLOAD_URL/ /" | tee /etc/apt/sources.list.d/arangodb.list
apt-get install apt-transport-https
apt-get update
apt-get install arangodb3=3.3.8