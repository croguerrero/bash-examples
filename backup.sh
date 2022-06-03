#!/bin/bash

# Backing up required files
echo "Creating backup of required files" && mkdir ~/backup  2> /dev/null || echo "Directory already exists"

echo "Copying files to backup" && cp -r /home/mguerrero/* ~/backup > log_file 2>&1 || echo "Error copying files"
 
grep -i denied  log_file | tail -n 2

exit 127 
