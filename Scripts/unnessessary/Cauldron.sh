##################################################################################
##                    SERVER SETUP MODULE SCRIPT BY EMERALDTNT                  ##
##      Report errors: https://github.com/josephworks/serverbuilder/issues      ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "Version: 5.5"
sleep 2
echo "Written by EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/josephworks/serverbuilder/issues"
sleep 1
echo "Cauldron Installer"
sleep 1
cd ~
wget https://yivesmirror.com/grab/cauldron/cauldron-1.7.10-2.1403.1.54.zip
unzip cauldron-1.7.10-2.1403.1.54.zip
mv cauldron-1.7.10-2.1403.1.54 Jars
cd Jars
mv cauldron-1.7.10-2.1403.1.54.jar server.jar
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
chmod 770 screen.sh
./screen.sh