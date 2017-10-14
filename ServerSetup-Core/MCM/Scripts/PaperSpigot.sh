##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "PaperSpigot Installer"
sleep 1
PS3='What Version would you like to install? '
options=("Latest" "1.8.8" "1.9.4" "1.10.2" )
select opt in "${options[@]}"
do
    case $opt in
        "Latest")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/lastSuccessfulBuild/artifact/paperclip.jar
            mv paperclip.jar server.jar
            cd ~/ServerSetup/Scripts
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.8.8")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/443/artifact/Paperclip.jar
            mv Paperclip.jar server.jar
            cd ~/ServerSetup/Scripts
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.9.4")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/773/artifact/paperclip.jar
            mv paperclip.jar server.jar
            cd ~/ServerSetup/Scripts
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/916/artifact/paperclip.jar
            mv paperclip.jar server.jar
            cd ~/ServerSetup/Scripts
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done