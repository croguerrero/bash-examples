#!/bin/bash
LOGFILE="/home/$USER/backup_logs"
BACKUP_LOC="/usr/bin/*"
BACKUP_TARGET="/home/$USER/work_backup"
# Backing up required files
init () {
    echo "Creating backup of required files" && mkdir  $BACKUP_TARGET 2> /dev/null || echo "Directory already exists"
    echo "$(date +"%x %r %Z")" >> $LOGFILE
    local files=34
}
init
tail(){
    command tail -n $1
}
echo "Copying files to backup" && cp -r $BACKUP_LOG $BACKUP_TARGET >> $LOGFILE 2>&1 || echo "Error copying files"
 
grep -i denied  $LOGFILE | tail 2


exit 127 
