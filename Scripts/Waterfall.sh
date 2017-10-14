##################################################################################
##                    SERVER SETUP MODULE SCRIPT BY EMERALDTNT                  ##
##      Report errors: https://github.com/josephworks/serverbuilder/issues      ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
toilet -f mono12 -F metal Server
toilet -f mono12 -F metal Builder
echo "Version: 5.5"
sleep 2
echo "Written by EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/josephworks/serverbuilder/issues"
sleep .6
echo "Waterfall Installer"
sleep 1
cd ~
mkdir Jars
cd Jars
wget https://ci.destroystokyo.com/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar
mv Waterfall.jar server.jar
wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
chmod 770 screen.sh
./screen.sh