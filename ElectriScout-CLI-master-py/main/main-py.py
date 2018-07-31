import os


os.system('clear')

print("Welcome to ElectriScout!!! Please keep in mind this beta software, so any inquiries should be directed towards the CHS Discord or the FRC Discord")
print("n: new match 	i: team info 	e: edit old matches 	q: exit")
entry = input("SELECTION		")

if entry == 'n':
	print("New Match")
	os.system('sleep 3s')
	os.system('python newmatch.py')

elif entry == 'i':
	print("Locating Matches.....")
	

elif entry == 'e':
	print("Edit Mode Enabled")

elif entry == 'q':
	exit()

else:
	print ("Invalid Option")
	os.system('sleep 2s')
	os.system('python main-py.py')
