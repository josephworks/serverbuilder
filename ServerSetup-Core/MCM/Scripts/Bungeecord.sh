##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Bungeecord Installer"
sleep 1
cd ~
mkdir Jars
cd Jars
wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
mv BungeeCord.jar server.jar
cd ~/ServerSetup/Scripts/
chmod 770 screen.sh
./screen.sh