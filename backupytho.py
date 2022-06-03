#!/usr/bin/env python3.8
import os
import subprocess
import calendar as cal
import datetime as dt
from pathlib import Path
import shutil

days = dt.datetime.now().strftime('%Y-%m-%d')
folder = input('Enter the folder you want to backup: ')
def backup_folders(folder):
    subprocess.run(['echo', 'Creating backup of required files']) 
    subprocess.run(['mkdir', 'backup']) if not os.path.exists('backup') else subprocess.run(['echo', 'Directory already exists'])
    subprocess.run(['echo', 'Copying files to backup'])
    Path(f'backup/{days}').mkdir(parents=True, exist_ok=True)
    subprocess.run(['cp', '-r', f'{folder}',f'backup/{days}']) #Copy the files to the backup directory

def delete_files(folder):
    subprocess.run(['echo', 'Deleting files from the folder'])
    subprocess.run(['rm', '-r', f'{folder}'])

