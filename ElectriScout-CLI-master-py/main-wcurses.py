import curses

curses.initscr()

def main():
	stdscr = curses.initscr()
	curses.noecho()
	curses.cbreak()
	stdscr.keypad(True)
	print("running some program...")

def teardown():
	curses.nocbreak()
	stdscr.keypard(False)
	curses.echo()
	curses.endwin()
teardown()

main()
import curses
from curses import wrapper

def main(stdscr):
	stdscr.clear()
	print("running some program...")

wrapper(main)
def main(stdscr):
	stdscr.clear()
	while True:
		c = stdscr.getch()
		stdscr.clear()
		if c == ord('a'):
			stdscr.addstr("YOU PRESSED A")
		elif c == curses.KEY_UP:
			stdscr.addstr("YOU PRESSED THE UP ARROW")
		else:
			stdscr.addstr("THIS PROGRAM KNOWS NOT THAT KEY")

import time

def main(stdscr):
	stdscr.nodelay(True)
	stdscr.clear()
	width = 4
	count = 1
	direction = 1
	while True:
		c = stdscr.getch()
		curses.flushinp
		stdscr.clear()
		if c == ord('p'):
			width +=1
		stdscr.addstr("#" + count)
		count += direction
		if count == width:
			direction = -1
		elif count == 0: 
			direction = 1
		time.sleep(0.1)
