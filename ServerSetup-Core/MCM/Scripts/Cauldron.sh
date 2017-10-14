##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Cauldron 1.7.10 Installer"
cd ~
wget https://yivesmirror.com/grab/cauldron/cauldron-1.7.10-2.1403.1.54.zip
unzip cauldron-1.7.10-2.1403.1.54.zip
mv cauldron-1.7.10-2.1403.1.54 Jars
cd Jars
mv cauldron-1.7.10-2.1403.1.54.jar server.jar
cd ~/ServerSetup/Scripts/
chmod 770 screen.sh
./screen.sh