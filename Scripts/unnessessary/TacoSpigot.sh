##################################################################################
##                    SERVER SETUP MODULE SCRIPT BY EMERALDTNT                  ##
##      Report errors: https://github.com/josephworks/serverbuilder/issues      ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "Version: 3.0"
sleep 2
echo "Written by EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/josephworks/serverbuilder/issues"
sleep 1
echo "TacoSpigot Installer"
echo "YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!"
sleep 1
cd ~
mkdir Jars
cd Jars
wget https://ci.techcable.net/job/TacoSpigot/lastSuccessfulBuild/artifact/build/TacoSpigot.jar
mv TacoSpigot.jar server.jar
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
chmod 770 screen.sh
./screen.sh