clear

echo "Enter team name: "
read teamname

echo "_______________________________________________________________________"

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
echo "_______________________________________________"

read -n 1 -p "Input Selection: " "search" && echo "
"

#Find data

if [ "$search" = "1" ]
  then
  sudo cat /home/ES/outs/$teamname.txt | grep 'Auto Cubes - Switch' > $scriptdir/../outs/dataout.txt
  sudo gedit $scriptdir/../outs/dataout.txt
  exec $scriptdir/main.sh

elif [ "$search" = "2" ]
  then
  sudo cat /home/ES/outs/$teamname.txt | grep 'Auto Cubes - Scale' > $scriptdir/../outs/dataout.txt
  sudo gedit $scriptdir/../outs/dataout.txt
  exec $scriptdir/main.sh

elif [ "$search" = "3" ]
  then
  cat /home/ES/outs/$teamname.txt | grep 'TeleOp Cubes - Switch' > $scriptdir/../outs/	dataout.txt
  gedit $scriptdir/../outs/dataout.txt
 exec $scriptdir/main.sh

elif [ "$search" = "4" ]
  then
  cat /home/ES/outs/$teamname.txt | grep 'TeleOp Cubes - Scale' > $scriptdir/../outs/dataout.txt
  gedit $scriptdir/../outs/dataout.txt
 exec $scriptdir/main.sh

elif [ "$search" = "5" ]
  then
  cat /home/ES/outs/$teamname.txt | grep 'Climb?' > $scriptdir/../outs/dataout.txt
  gedit $scriptdir/../outs/dataout.txt
  exec $scriptdir/main.sh

elif [ "$search" = "6" ]
  then
  cat /home/ES/outs/$teamname.txt | grep "Match Number" > $scriptdir/../outs/dataout.txt
  gedit $scriptdir/../outs/dataout.txt
  exec $scriptdir/main.sh

elif [ "$search" = "7" ]
  then
  cat /home/ES/outs/$teamname.txt | grep "Baseline?" > $scriptdir/../outs/dataout.txt
  gedit $scriptdir/../outs/dataout.txt
  exec $scriptdir/main.sh


fi
