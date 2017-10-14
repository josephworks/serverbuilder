##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##   Report config error https://github.com/josephworks/serverbuilder/issues    ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Cauldron Installer"

sleep 1
PS3='What Version would you like to install? '
options=("1.7.10" )
select opt in "${options[@]}"
do
    case $opt in
        "1.7.10")
            cd ~
            wget https://yivesmirror.com/grab/cauldron/cauldron-1.7.10-2.1403.1.54.zip
            unzip cauldron-1.7.10-2.1403.1.54.zip
            mv cauldron-1.7.10-2.1403.1.54 Jars
            cd Jars
            mv cauldron-1.7.10-2.1403.1.54.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done