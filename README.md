# Bash lab - Cron backup

Automatic backup of 'log.txt' file, based on bash script and crontab.

## How it works:

1. backup.sh checks if log.txt exist.
2. If yes, it makes a copy to backup folder.
3. Adds new sufix with date.
4. Cron runs script automatically in every 3minute.

## Requirements:

-Linux
-Bash
-Crontab

## Folder structure:

Bash001/
|---backup.sh
|---log.txt
|---backup/
|---README.md

## Script:

'''bash
chmod +x backup.sh
./backup.sh

## Cron:

*/3 * * * * /home/Layer/Layer/Bash01/backup.sh

## Author:

Mathiell
