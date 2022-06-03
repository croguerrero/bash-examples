#!/usr/bin/env python3.8

import os
import subprocess
import pathlib
import shutil

from pprint import pprint as pp

# Get your current working directory
mycwd = os.getcwd()
pp(mycwd)

#List the contents of the current working directory
dirlist=os.listdir()
for item in dirlist:
    pp(item)

#Get the absolute path of the current working directory
pp(os.path.abspath('elder.sh'))

#Check if the file exists
pp(os.path.exists('elder.sh'))
