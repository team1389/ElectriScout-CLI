echo "Starting ES"
sleep 2s 

echo "Initialization Process Complete"
sleep 1s

echo "Cloning into directory /home/ES"
sleep 1s

cd /home/ES


echo "Entered Directory /home/ES"
sleep 1s

echo "Cloning into Directory /home/ES/main"
sleep 1s

cd main

echo "Starting ElectriScout-main.sh"
sleep 1s

echo "Close gedit window to proceed"
sudo gedit init.txt > "close this window to proceed"

sleep 1s

./main.sh

