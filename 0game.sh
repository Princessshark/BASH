#!/bin/bash
#AUTHOR:  Written by Bipul Sharma.
#DESCRIPTION:	A Command line probability based game written in bash. 

#variables starty
enemy1="Necron"
enemy2="Ego"
#variables end

#player info
echo "Enter your avatar name"
	read name
echo "you died $name"
	sleep 3
echo "Just Kidding"

#LEVEL0
#sucess probability 50%

echo "Prepare for First Battle"
	sleep 2
	clear
echo "$enemy1 Approches"
	sleep 0.5
echo "."
	sleep 0.5
echo ".."
	sleep 0.5
echo "..."

enemy=$(( $RANDOM % 2 ))

echo "pick a number to start the battle (0/1)"
	read number

#cheatcode = unfair
if [[ $enemy == $number || $number == "unfair" ]]; then
	echo "$enemy1 has been slayed!"
	sleep 3
	echo "You have my attention $name"
else
	echo "You Died"
	sleep 1
	echo "It is for Real This Time"
	clear
	echo "Back to 1989"
	sleep 2
	exit 1
	clear
fi
sleep 2

#LEVEL1
#sucess probability += 33.333..%

echo "Prepare for Second Battle"
	sleep 1
	clear
echo "$enemy2 Approches"
	sleep 0.5
echo "."
	sleep 0.5
echo ".."
	sleep 0.5
echo "..."

enemy=$(( $RANDOM % 3 ))

echo "pick a number to start the battle (0/2)"
	read number

if [[ $enemy == $number || $number == "stop" ]]; then
	echo "$enemy2 has been slayed!"
	sleep 3
	echo "You are more than you let of $name"
	sleep 2
	clear
	echo "TO BE CONTINUED..."
else
	echo "You Died"
	sleep 2
	clear
	echo "Travelling to 8th of June,"
	sleep 2
	exit 1
	clear
fi
