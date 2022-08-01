#!/bin/bash
#APP Servers
users=("steve" "banner")
passwd=("Am3ric@" "BigGr33n")
server=("172.16.238.11" "172.16.238.12")

echo ${users[1]}
#set time zone
for i in ${!server[@]}
do
    echo "set time zone for ${server[$i]}"
    sshpass -p ${passwd[$i]} ssh -o StrictHostKeyChecking=no ${users[$i]}@${server[$i]} "sudo timedatectl set-timezone Asia/Shanghai"
done

