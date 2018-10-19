#!/bin/bash

#Get script directory
scriptdir=$(dirname $0)

#Clear the Console
clear

# Enter Team Number

echo "WELCOME! THIS IS THE MAIN SCOUTING FORM USED BY TEAM 1389 DURING EVENTS!
PLEASE FILL OUT ALL FIELDS TO THE BEST OF YOUR ABILITY. DATA VALIDATION IS IN USE"

echo "_________________________________________________________________________"
echo ""

echo "Enter team number:"
read teamnum

#Enter Match Number
echo "Enter match number:"
read matchnum

#Print AUTO
echo "______________________________________________________________"
echo "Autonomous Period - From starting bell to 30 seconds in"
echo ""

#Enter Switch Auto
echo "Enter number of cubes on the switch in auto:"
read autoswitch

# Enter Scale Auto
echo "Enter number of cubes on the scale in auto:"
read autoscale

# Did The Team Cross the Baseline
echo "Did $teamnum cross the baseline? (y/n):"
read basecheck

# Print TELEOP
echo "_____________________________________________________________"
echo "TeleOp - From 30s --> End of match"
echo ""

#Enter Switch Tele
echo "Enter number of cubes on the switch in TeleOp:" 
read teleswitch

#Enter Scale Tele
echo "Enter number of cubes on the scale in TeleOp:"
read telescale

# Print ENDGAME
echo "_____________________________________________________________"
echo "Endgame - Last 30 Seconds (You will hear a horn)"
echo ""

# Check for Climb
echo "Did $teamnum climb? (y/n):" 
read climbcheck

# Thank the Scout
echo ""
echo "THANK YOU! YOUR RESPONSE HAS BEEN RECORDED."

sleep 2s


echo "Match Number		'$matchnum' 
Auto Cubes - Switch	'$autoswitch' 
Auto Cubes - Scale	'$autoscale
Baseline?		'$basecheck' 
TeleOp Cubes - Switch	'$teleswitch' 
TeleOp Cubes - Scale	'$telescale'
Climb?			'$climbcheck' " | sudo tee -a $scriptdir/../outs/"$teamnum".txt

clear
exec $scriptdir/main.sh
