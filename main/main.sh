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
echo "n: new match		e: edit old matches 		q: exit electriscout 		i: team info"
echo ""
<<<<<<< HEAD
echo "
_____________________________________________________________________________________________"

echo "

n: new match		e: edit old matches 		i: team info		q: quit ElectriScout"

echo "
"
=======
>>>>>>> 17c1ac9a33f48c5aa06b505bca8a5a90e99de988

echo "Select your option:"
read openingop

#Open the newmatch.sh script stored in the main folder

if [ "$openingop" = "n" ] 
then 
	echo "Opening new match..."
	sleep 2s
	exec $scriptdir/newmatch.sh

#Use a basic FIND command to find the team in question
 
elif [ "$openingop" = "e" ]
then 
	echo "Enter team number to find data on:"
	read teamfind
<<<<<<< HEAD

=======
>>>>>>> 17c1ac9a33f48c5aa06b505bca8a5a90e99de988
	echo "Searching..."
	sleep 3s
	find $scriptdir/../outs/"$teamfind".txt
	nano $scriptdir/../outs/"$teamfind".txt 
	clear
	exec $scriptdir/main.sh
<<<<<<< HEAD

	echo "Searching"
	wait 3s
	find /home/ElectriScout-CLI-master/outs/"$teamfind".txt && nano /home/electriscout-development/outs/"$teamfind".txt 
	clear
	exec /home/ElectriScout-CLI-master/main/main.sh

=======
>>>>>>> 17c1ac9a33f48c5aa06b505bca8a5a90e99de988

#Use a basic FIND command to find the team in question

elif [ "$openingop" = "i" ]
then 
	echo "Enter team number to search:"
	read teamnumsearch
	find $scriptdir/../outs/"$teamnumsearch".txt
	sleep 3s
	echo "Cataloguing..."
	nano $scriptdir/../outs/"$teamnumsearch".txt
	clear
	exec $scriptdir/main.sh

#Clear and Exit
elif [ "$openiningop" = "q" ]
then
	clear
	exit
	
fi
