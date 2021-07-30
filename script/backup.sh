#!/bin/sh

echo "Daily backup..."

ZIP=`date +%y%m%d`
DEST=/home/pi/Documents/backup/$ZIP.zip

zip -r $DEST /var/lib/docker/volumes/Bitwarden/_data

echo "End backup..."