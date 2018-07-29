#Clear the Console

clear
echo "Welcome to ElectriScout! please fill in each of the fields to the best of your ability "
echo "
_____________________________________________________________________________________________"
echo ""
echo "Please note this is beta software, so if you have any questions, comments, or concerns, you can open an issue at: www.github.com/team1389/1389App
Additionally, you can email ecbcat20@icloud.com or emmetryan7@gmail.com"
echo "
_____________________________________________________________________________________________"

echo "

n: new match		e: edit old matches 		i: team info		q: quit ElectriScout"

echo "
"

echo "select your option:"
read openingop

#Open the newmatch.sh script stored in the main folder

if [ "$openingop" = "n" ] 
then 
	echo "Opening new match"
	wait 2s
	exec /home/ElectriScout-CLI-master/main/newmatch.sh

#Use a basic FIND command to find the team in question
 
elif [ "$openingop" = "e" ]
then 
	echo "Enter Team Number to Find Data On"
	read teamfind
	echo "Searching"
	wait 3s
	find /home/ElectriScout-CLI-master/outs/"$teamfind".txt && nano /home/electriscout-development/outs/"$teamfind".txt 
	clear
	exec /home/ElectriScout-CLI-master/main/main.sh

#Use a basic FIND command to find the team in question

elif [ "$openingop" = "i" ]
then 
	echo "Enter Team Number To Search"
	read teamnumsearch
	find /home/ElectriScout-CLI-master/outs/"$teamnumsearch".txt
	wait 3s
	echo "Catalogging"
	nano /home/ElectriScout-CLI-master/outs/"$teamnumsearch".txt
	clear
	exec /home/ElectriScout-CLI-master/main/main.sh

#Clear and Exit
elif [ "$openiningop" = "q" ]
then
	clear
	exit
	
fi
