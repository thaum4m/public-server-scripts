#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Settings
SRC_WEB_CONF="$DIR/web.conf"
DEST_WEB_CONF="/opt/splunk/etc/system/default/web.conf"

DATE_STR=$(date +'%d-%m-%Y_%H_%M_%S_%3N')
BACKUP_DIR="$DIR/backup"
BACKUP_WEB_CONF="$BACKUP_DIR/web.conf-$DATE_STR"

mkdir -p "$BACKUP_DIR"
cp "$DEST_WEB_CONF" "$BACKUP_WEB_CONF"
cp "$SRC_WEB_CONF" "$DEST_WEB_CONF"

printf "DONE.\n"
