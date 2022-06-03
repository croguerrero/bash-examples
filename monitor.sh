#!/bin/bash
echo -e "Checking Objectives..."
# Monitor Memory
free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }'
# Monitor CPU
top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'
# Monitor Disk
df -h | awk '$NF=="/"{printf "%.2f%%\t\t", $5}'

