##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "Version: 3.0"
sleep 2
echo "Created By EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/josephworks/serverbuilder/issues"
sleep 1
echo "HexCord Installer"
sleep 1
cd ~
mkdir Jars
cd Jars
wget https://github.com/HexagonMC/BungeeCord/releases/download/v162/BungeeCord.jar
mv BungeeCord.jar server.jar
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
chmod 770 screen.sh
./screen.sh