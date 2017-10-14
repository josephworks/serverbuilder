##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Waterfall Installer"

sleep 1
cd ~
mkdir Jars
cd Jars
wget https://ci.destroystokyo.com/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar
mv Waterfall.jar server.jar
cd ~/ServerSetup/Scripts/
chmod 770 screen.sh
./screen.sh