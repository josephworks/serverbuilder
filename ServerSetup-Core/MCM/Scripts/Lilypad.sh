##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Lilypad Installer"

echo "Please note this only is for 64bit based servers!"
echo "Most servers are that, but if you are not sure contact your host!"
sleep 1
cd ~
mkdir Proxy
cd Proxy
wget http://ci.lilypadmc.org/job/Go-Server-Proxy/lastSuccessfulBuild/artifact/target/proxy-linux-amd64
cd ..
mkdir Connect
cd Connect
wget http://ci.lilypadmc.org/job/Go-Server-Connect/lastSuccessfulBuild/artifact/target/connect-linux-amd64
cd ..
cd ~/ServerSetup/Scripts/
chmod 770 lilyscreen.sh
./lillyscreen.sh
