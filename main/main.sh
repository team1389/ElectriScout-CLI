#!/bin/bash

#Get script directory
scriptdir=$(dirname $0)

#Clear the Console

clear
echo "Welcome to ElectriScout! Please fill in each of the fields to the best of your ability "
echo "_____________________________________________________________________________________________"
echo ""
echo "Please note this is beta software, so if you have any questions, comments, or concerns, you can open an issue at: www.github.com/team1389/1389App
Additionally, you can email ecbcat20@icloud.com or emmetryan7@gmail.com"
echo "_____________________________________________________________________________________________"
echo ""
echo "n: New Match		i: Advanced Team Info 		q: Quit ElectriScout"
echo ""

echo "
_____________________________________________________________________________________________"

echo "
"

read -n 1 -p "Input Selection: " "openingop" && echo "
"

#Open the newmatch.sh script stored in the main folder

if [ "$openingop" = "n" ] 
then 
	echo "Opening new match..."
	sleep 2s
	exec $scriptdir/newmatch.sh

#Use a basic FIND command to find the team in question

elif [ "$openingop" = "i" ]
then 
	exec $scriptdir/find.sh

elif [ "$openiningop" = "q" ]
then
	clear
	exit
	clear
fi
