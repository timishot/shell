#!/bin/bash

# This script creates a subdirectory in the current directory, to which old
# files are moved.
# Might be something for cron (if slightly adapted) to execute weekly or
# monthly.

ARCHIVENR=$(data +%Y%m%d)
DESTDIR="$PWD/archive-$ARCHIVENR"

mkdir "$DESTDIR"

# using quotes to catch file names containing spaces, using read -d for more
# fool-proof Usage:
find "$PWD" -type f -a -mtime +5 | while IFR= read -r -d ''  file; do
	gzip "$file"
       	mv "$file".gz "$DESTDIR"
	echo "$file archived"
done
