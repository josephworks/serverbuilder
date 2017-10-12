#!/usr/bin/python

import os
import sys
import traceback


def main():
    try:
        cmd1 = os.system("echo starting && echo installing dependencies")
        cmd2 = os.system(
            "sudo apt-get update && sudo apt install toilet figlet maven default-jre")
        cmd3 = os.system(
            "echo showing start message... && toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder")
        cmd4 = os.system(
            "echo creating custom commands && echo custom commands will not be integrated into this script cause it is a .py")
        cmd5 = os.system("echo do /help for help")


except KeyboardInterrupt:
print("Shutdown requested...Goodbye...")
except Exception:
traceback.print_exc(file=sys.stdout)
sys.exit(0)






#src code below (from a temp document) [do not run with terminal without removing]
def classicmenu():
			while True:
				print ('''
1) Download ALL Minecraft sevrers (Bukkit, spigot, Paper, Glowstone, etc..)
2) View Server Types
3) Install dependencies + extras
4) Install Kali menu
5) Help/More commands
			''')

				opcion0 = raw_input("\033[1;36mServerBuild > \033[1;m")
			
				while opcion0 == "1":
					print ('''
1) Add kali linux repositories
2) Update
3) Remove all kali linux repositories
4) View the contents of sources.list file
					''')
					repo = raw_input("\033[1;32mWhat do you want to do ?> \033[1;m")
					if repo == "1":
						cmd1 = os.system("apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6")
						cmd2 = os.system("echo '# Kali linux repositories | Added by Katoolin\ndeb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list")
					elif repo == "2":
						cmd3 = os.system("apt-get update -m")
					elif repo == "3":
						infile = "/etc/apt/sources.list"
						outfile = "/etc/apt/sources.list"

						delete_list = ["# Kali linux repositories | Added by Katoolin\n", "deb http://http.kali.org/kali kali-rolling main contrib non-free\n"]
						fin = open(infile)
						os.remove("/etc/apt/sources.list")
						fout = open(outfile, "w+")
						for line in fin:
						    for word in delete_list:
						        line = line.replace(word, "")
						    fout.write(line)
						fin.close()
						fout.close()
						print ("\033[1;31m\nAll kali linux repositories have been deleted !\n\033[1;m")
					elif repo == "back":
						inicio1()
					elif repo == "gohome":
						inicio1()
					elif repo == "4":
						file = open('/etc/apt/sources.list', 'r')

						print (file.read())

					else:
						print ("\033[1;31mSorry, that was an invalid command!\033[1;m") 					
						

				if opcion0 == "3":
					print (''' 
ClassicMenu Indicator is a notification area applet (application indicator) for the top panel of Ubuntu's Unity desktop environment.
It provides a simple way to get a classic GNOME-style application menu for those who prefer this over the Unity dash menu.
Like the classic GNOME menu, it includes Wine games and applications if you have those installed.
For more information , please visit : http://www.florian-diesch.de/software/classicmenu-indicator/
''')
					repo = raw_input("\033[1;32mDo you want to install classicmenu indicator ? [y/n]> \033[1;m")
					if repo == "y":
						cmd1 = os.system("add-apt-repository ppa:diesch/testing && apt-get update")
						cmd = os.system("sudo apt-get install classicmenu-indicator")

				elif opcion0 == "4"	:
					repo = raw_input("\033[1;32mDo you want to install Kali menu ? [y/n]> \033[1;m")
					if repo == "y":
						cmd1 = os.system("apt-get install kali-menu")