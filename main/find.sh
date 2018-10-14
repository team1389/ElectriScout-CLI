clear

echo "Enter team name: "
echo "_______________________________________________________________________"

read teamname

scriptdir=$(dirname $0)


find /home/ES/outs/$teamname.txt

echo "Found Entries"

echo "Enter Criteria to Search"
echo "
"

echo "Options"

echo "Switch in Auto - 1"
echo "Scale in Auto - 2"
echo "Switch in TeleOp - 3"
echo "Scale in Teleop - 4"
echo "Climbing - 5"
echo "Match - 6"
echo "Baseline - 7"

read search

if ["$search" = "1"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep 'Auto Cubes - Switch' 

elif ["$search" = "2"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep 'Auto Cubes - Scale'

elif ["$search" = "3"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep 'TeleOp Cubes - Switch'

elif ["$search" = "4"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep 'TeleOp Cubes - Scale'

elif ["$search" = "5"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep 'Climb?'

elif ["$search" = "6"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep "Match Number"

elif ["$search" = "7"]
then

echo "Finding"
sleep 1s
cat /home/ES/outs/$teamname.txt | grep "Baseline?"


fi
