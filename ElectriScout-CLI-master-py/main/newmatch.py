import os, json
automessage = "AUTONOMOUS PERIOD - Start --> 30 Seconds"
telemessage = "TELEOPERATED PERIOD - 30s --> ENDGAME"
endgamemessage = "ENDGAME - Last 30 Seconds"


os.system('clear')

print("Hello! Thank you for taking the time to help us out with scouting!")
\
\
print("__________________________________________________________________")
\
\
 

teamnum = input("Enter Team Number ")
print("Team = " + teamnum)
\

matchnum = input("Enter Match Number and Type (PRACTICE 1) ")
print(teamnum + " " + matchnum)
\

print(automessage)
\
\
autoswitch = input("How many Cubes on the Switch in Auto? ")
\
\
autoscale = input("How many Cubes on the Scale in Auto ")
\
\
basecheck = input("Did" + teamnum + " Cross the Baseline? (Y/N) ")
\

print(telemessage)
\
\
teleswitch = input("How many Cubes on the Switch in TeleOp? ")
\
\
telescale = input("How many Cubes on the Scale in TeleOp? ")
\
\
climbcheck = input("Did " + teamnum + " climb? (Y/N) ")
\
\

print("THANK YOU, YOUR RESPONSE HAS BEEN RECORDED")
os.system('python main-py.py')

