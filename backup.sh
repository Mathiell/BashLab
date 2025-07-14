#!/bin/bash

echo "Script running from: $(pwd)"

#paths
BACKUP_FILE="/home/Layer/Layer/Bash01/log.txt"
BACKUP_FOLDER="/home/Layer/Layer/Bash01/backup_folder"
echo "Checking.."

#check is file exist
if [ -d "$BACKUP_FOLDER" ]; then
	echo "Folder exist!"
else
	echo "Folder doesn't exist :C"
fi

if [ -f "$BACKUP_FILE" ]; then
	echo "File Exist!"
	DATA=$(date +%Y-%m-%d_%H-%M-%S)
	echo "copying file to: $BACKUP_FOLDER"
	cp "$BACKUP_FILE" "$BACKUP_FOLDER/log_$DATA.txt"
	echo "Backup done!"
else
	echo "File doesn't exist.."
fi
