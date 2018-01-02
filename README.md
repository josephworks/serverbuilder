# serverbuilder
A server builder for minecraft!
# Currently Supported OS's
Debian
Ubuntu
CentOS

If you would like your Operating System supported make an issue in the issues section
# Current Versions

> Server Softwares
*   Spigot
* Vanilla
* PaperSpigot
* Forge
*  Cauldron
* Sponge
* CraftBukkit
* Torch
* Hose
* TacoSpigot

> Proxies
* Bungeecord
* Waterfall
* LilyPad
* HexaCord
* Travertine

>  Websoftware
* Wordpress
* Namelessmc
* Mybb
* Xenforo**

> Miscellaneous

* Screen
* wget
* unzip
* apache2
* git
* java
* JDK
* php
* mysql
* Apt

> Note:
Does not provide a license for this software, you will need to download and upload it yourself.

All of the Server and Proxy softwares support a variety of minecraft versions, most of them at least 1.7.10+ if offered. Feel free to request a certain version in the issues tab.

If the software you want to use is not listed, feel free to request it in the issues tab.

# Installation
---
# Installation script
>echo "starting..."
sudo apt update && sudo apt upgrade
sudo apt install git
git clone https://github.com/josephworks/serverbuilder.git
cd serverbuilder
./serverbuild.sh
---
# One line installation script
>echo "starting..." && sudo apt update && sudo apt upgrade && sudo apt install git && git clone https://github.com/josephworks/serverbuilder.git && cd serverbuilder && ./serverbuild.sh
---
```sh
 1. Download ServerBuilder Software
 2. upload it via ftp OR use the remote feature
 3. Execute One line installation script on terminal with SSH
```
# Remote Setup currently supports:
* Windows 10 (No other windows version supported)
* Ubuntu
* Debian
* CentOS (Depreciated)
* MacOS

Windows is supported if Bash on Ubuntu on Windows is working
There is an install script provided!
------
```sh
3. Unzip the serversetup into your Downloads folder
4. Make sure it unziped into your downloads folder and it shows serversetup5.0.sh and the folder Remote
5. Open remote folder.
```
# WINDOWS ONLY
> Note: This Installs Bash on Ubuntu on Windows. If you have done this already execute the One line installation script with bash.exe
```sh
6. Click install.bat
7. Follow all prompts on screen, your computer will restart and when it does a cmd window should appear, follow prompts and then it will open the remote script. Follow all prompts with the remote script to install your software.
8. You should now be able to use your software if not please post a report here.
```
# NON WINDOWS
```sh
execute the One line installation script
```
# NON-REMOTE
```sh
3. After uploading it to your server, login to ssh as root and run the following commands:
```
# Debian/Ubuntu
```sh
>echo "starting..."
sudo apt update && sudo apt upgrade
sudo apt install git
git clone https://github.com/josephworks/serverbuilder.git
cd serverbuilder
./serverbuild.sh
```

# CentOS
```sh
yum install unzip
unzip serversetup.zip
chmod 770 ./serversetup5.0.sh
./serverbuild.sh
```

# Support
I provide support in the issues tab.

"Thanks for reading this repository's readme, if this repository helps you please leave a star and or fork it; it really motivates me to keep working on this." Quote by Buzzzy and agreed and edited by EmeraldTnt.
