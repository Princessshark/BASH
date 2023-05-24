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

if [[ $name == "" ]]; then
	echo "Ahh! So you are one of those meatheads.."
	sleep 2
	exit 1
else
	echo "you died $name"
	sleep 3
	echo "Just Kidding"
fi
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

if [[ $number == "" ]]; then
	echo "Some meatheads never learn"
	exit 1
elif [[ $enemy == $number || $number == "stop" ]]; then
	echo "okay"
	sleep 2
	echo "wait what was i suppose to do again.. yeah the battle and stuff"
	sleep 2
#cheatcode = unfair
	echo "$enemy1 has been slayed!"
	sleep 1
	clear
	sleep 1
	echo "VOICE INSIDE THE HEAD : You have my attention $name" 
	echo "what was that all about i wonder."
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

if [[ $number == "" ]]; then
	echo "Mindblowing"
	exit 1
elif [[ $enemy == $number || $number == "stop" ]]; then
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
