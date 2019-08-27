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
echo "Enter match type (all caps pls): "
read matchtype

#Print SANDSTORM
echo "______________________________________________________________"
echo "Sandstorm Period - From starting bell to 15 seconds in"
echo ""

#Enter Cargo Ship Hatch Placement Sandstorm Accuracy
echo "Enter Accuracy of Hatch Placement - CARGO SHIP (LOW - MID - HIGH): "
read sandCargoH

# Enter Cargo Ship Cargo Placement Accuracy
echo "Enter Accuracy of Cargo Placement - CARGO SHIP (LOW - MID - HIGH): "
read sandCargoC

# Enter Rocket Hatch Placement Accuracy
echo "Enter Accuracy of Hatch Placement - ROCKET (LOW - MID - HIGH): "
read sandHatchR

# Enter Rocket Cargo Placement Accuracy
echo "Enter Accuracy of Cargo Placement - ROCKET (LOW - MID - HIGH): "
read sandCargoR

# From Which HAB Level did the Team Descend?
echo "Which Level of the HAB did $teamnum descend from? (1-2): "
read descendCheck

# Print TELEOP
echo "_____________________________________________________________"
echo "TeleOp - From 15s --> End of match"
echo ""

#Enter Hatch Panels on Cargo Ship
echo "Enter Number of Hatch Panels on the Cargo Ship in TeleOp: " 
read teleCargoH

#Enter Cargo in Cargo Ship
echo "Enter Number of Cargo in the Cargo Ship in TeleOp: "
read teleCargoC

# Enter Rocket Hatch Panels
echo "Enter Number of Hatch Panels on the Rocket in TeleOp: "
read teleHatchR

# Enter Rocket Cargo
echo "Enter Number of Cargo on the Rocket in TeleOp: "
read teleCargoR

# Enter Highest Rocket Hatch
echo "Enter Highest Rocket Hatch (0 - 1 - 2 - 3): "
read hatchLevelR

# Enter Highest Rocket Cargo
echo "Enter Highest Rocket Cargo (0 - 1 - 2 - 3): "
read cargoLevelR

# Print ENDGAME
echo "_____________________________________________________________"
echo "Endgame - Last 30 Seconds (You will hear a horn)"
echo ""

# Check for Climb
echo "To Which HAB Level Did $teamnum Climb? (1 - 2 - 3): " 
read climbCheck

# Did Robot Die
echo "Did $teamnum Die at Any Point in the Match? (YS, YT, NO, YE): "
read deathCheck

# Thank the Scout
echo ""
echo "THANK YOU! YOUR RESPONSE HAS BEEN RECORDED."

sleep 2s


echo 
"Match Type			'$matchtype' 
Sand Hatch CS		    	'$sandCargoH' 
Sand Cargo CS		   	'$sandCargoC'
Sand Hatch Rocket		'$sandHatchR' 
Sand Cargo Rocket		'$sandCargoR' 
HAB Descent Level		'$descendCheck'
Tele Hatch CS			'$teleCargoH'
Tele Cargo CS			'$teleCargoC'
Tele Hatch Rocket		'$teleHatchR'
Tele Cargo Rocket		'$teleCargoR'
Highest Rocket Hatch		'$hatchLevelR'
Highest Rocket Cargo		'$cargoLevelR'	
HAB Climb Level			'$climbCheck'
$teamnum Died?			'$deathCheck' | sudo tee -a $scriptdir/../outs/"$teamnum".txt"


clear
exec $scriptdir/main.sh
