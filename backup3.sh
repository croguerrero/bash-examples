#!/bin/bash

MYLOG=$1

echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /h "Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp before work is done $(date +"%D %T")" >> /home/$USER/$MYLOG

cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> /home/$USER/$MYLOG