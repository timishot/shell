#!/bin/bash

# This script copies files from my homedirectory into the webserver directory
# (use scp nd SSH keys for a remote directory)
# A new directory is created every hour.

PICSDIR=/home/timishot/pictures
WEBDIR=/var/www/timishot/webcam

while true; do
	DATE=$(date +%Y%m%d)
	HOUR=$(date +%H)
	mkdir -p $WEBDIR/"$DATE"/"$HOUR"

	while [ "$HOUR" -ne "00" ]; do
		DESTDIR=$WEBDIR/"$DATE"/"$HOUR"
		mkdir "$DESTDIR"
		mv $PICSDIR/*.jpg "$DESTDIR"/
		sleep 3600
		HOUR=$(date +%H)
	done
done
