#!/bin/bash

# Author: Bipul Sharma
# Date Created: 10-01-2024
# Last Modified: 13-03-2025

# Description
# By executing this script you can back up data from your system

# Usage
# Inputs are Case Insensitive Press Y to Start || N to Abort, post which press enter to confirm.(y/n)

activedir=$(pwd)


echo "Hello "${USER^}
sleep 2
echo "Press Y to Start || N to Abort (followed by an enter key to submit)"    
	read userInput
clear
if [[ $userInput == "Y" || $userInput == "y" ]]; then
	echo "A backup on, $date is created $activedir"
       	sleep 2	
	#Date is being projected using command substitution
	tar -cvf $activedir/backup_date_"$(date +%d-%m-%Y_%H-%M-%s)".tar ~/* 2>/dev/null    
	clear
	echo "Backup Completed Succesfully at $activedir."
	exit 0
elif [[ $userInput == "N" || $userInput == "n" ]]; then
	echo "About Backup Process."
	exit 0
else
	echo "Error: Invalid Parameter."
	exit 1
fi
