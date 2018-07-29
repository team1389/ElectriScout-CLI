#Clear the Console
clear

# Enter Team Number

echo "WELCOME! THIS IS THE MAIN SCOUTING FORM USED BY TEAM 1389 DURING EVENTS!
PLEASE FILL OUT ALL FIELDS TO THE BEST OF YOUR ABILITY. DATA VALIDATION IS IN USE"

echo " _________________________________________________________________________"

echo "Enter Team Number"
read teamnum

echo "your team is $teamnum"

#Enter Match Number
echo "Enter Match Number"
read matchnum

echo "Team = $teamnum ---- Match = $matchnum"

#Print AUTO
echo ""
echo "Autonomous Period - From starting bell to 30 seconds in"
echo "
______________________________________________________________"

echo ""

#Enter Switch Auto
echo "Enter number of cubes on the switch in auto"
read autoswitch

echo ""

# Enter Scale Auto
echo "Enter number of cubes on the scale in auto"
read autoscale

# Did The Team Cross the Baseline
echo "Cross Baseline? (y/n)"
read basecheck

echo "
_____________________________________________________________"

echo ""

# Print TELEOP
echo "TeleOperated Period - From 30s --> Endgame"

#Enter Switch Tele
echo "Enter number of cubes on the switch in teleop" 
read teleswitch

#Enter Scale Tele
echo "Enter number of cubes on the scale in tele" 
read telescale

echo "
_____________________________________________________________"
echo ""

# Print ENDGAME
echo "Endgame - Last 30 Seconds (You will hear a horn)"

# Check for Climb
echo "Did $teamnum climb? (y/n)" 
read climbcheck

# Thank the Scout
echo "THANK YOU! YOUR RESPONSE HAS BEEN RECORDED"

sleep 2s

echo "Match Number		$matchnum
Auto Cubes - Switch	$autoswitch
Auto Cubes - Scale	$autoscale
Baseline?		$basecheck
TeleOp Cubes - Switch	$teleswitch
TeleOp Cubes - Scale	$telescale
Climb?			$climbcheck
" >> /home/ElectriScout-CLI-master/outs/"$teamnum".txt

clear
exec /home/ElectriScout-CLI-master/main/main.sh
