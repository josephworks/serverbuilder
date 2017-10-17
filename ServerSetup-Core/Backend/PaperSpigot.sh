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
sleep 10
echo "PaperSpigot Installer"
sleep 1
PS3='What Version would you like to install? '
options=("Latest" "1.8.8" "1.9.4" "1.10.2" "1.11.2" )
select opt in "${options[@]}"
do
    case $opt in
        "Latest")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/lastSuccessfulBuild/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.8.8")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/443/artifact/Paperclip.jar
            mv Paperclip.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.9.4")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/773/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/916/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.11.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/1104/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done