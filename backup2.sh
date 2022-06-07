#!/bin/bash
echo "Creating backup directory" >> /home/cloud_user/backup_logs
mkdir /home/cloud_user/work_backup

echo "Copying Files" >> /home/cloud_user/backup_logs
cp -v /home/cloud_user/work/*  /home/cloud_user/work_backup/ >>  /home/cloud_user/backup_logs
echo "Finished Copying Files" >>  /home/cloud_user/backup_logs

