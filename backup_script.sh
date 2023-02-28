#!/bin/bash

# Check to make sure the user has entered exactly two arguments.
if [ $# -ne 2 ]
then
	echo "Usage: backup_script.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1
fi

# Check to see if command is installed.
if ! command -v rsync > /dev/null 2>&1
then
	echo "This script requires rsync to be installed."
	echo "Please use your distributions package manager to install it and try again."
	exit 2
fi

# Capture the current date and store it in the format YYYY-MM-DD.
CURRENT_DATE=$(date +%Y-%m-%d)

RSYNC_OPTIONS="-avb --backup-dir $2/$CURRENT_DATE --delete "

$(which rsync) $RSYNC_OPTIONS $1 $2/current >> backup_$CURRENT_DATE.log
