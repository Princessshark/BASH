#!/bin/bash

# Author: Bipul Sharma
# Date Created: 10-01-2024
# Last Modified: 12-06-2024

# DESCRIPTION
# This file when executed back's up the users entire home directory in as a tar file
# The backeup file will be available in the ~/Documents directory

# Usage
# backup_script_bash_shell_of_host_home_to_host_desktop_with_date&&time.



time=$(date)
clear
echo "Hello "${USER^}
sleep 2
clear
echo  "Are you certain on creating a backup for"$time "(Y/N)"
	read response
if [[ $response == "" ]]; then
	echo "Invalid parameter selected."
	sleep 1
       	echo "Re-execute the backup file, and be sure to select (Y/N) to confirm or deny the process."
	exit 1
elif [[ $response == "n" || $response == "N" ]]; then
	echo "Abort" ${USER##} "backup for" $time
	exit 1
else 
	sleep 2
	tar -cvf ~/Documents/backup_date_"$(date +%d-%m-%Y_%H-%M-%s)".tar ~/* 2>/dev/null
	clear
fi
echo "Your backup has been created"

