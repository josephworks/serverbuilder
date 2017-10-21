##################################################################################
##                          ServerBuilder BY EMERALDTNT                         ##
##      Report errors: https://github.com/josephworks/serverbuilder/issues      ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
echo starting...
#-----------------------------------------------
echo installing dependencies
# main work
sudo apt update
sudo apt install toilet figlet maven default-jre
# serversetup depends
echo installing dependencies ..
echo "trying for Ubuntu"
sudo apt install wget apache2 mysql-server php5 libapache2-mod-php5 default-jre screen git curl unzip
echo "Trying for Debian"
sudo apt install wget mysql-server default-jre screen git php5-common libapache2-mod-php5 php5-cli apache2 curl unzip
echo "For CentOS:"
echo "You will need to run the option Basics before anything else for it to work!"
#-----------------------------------------------
echo started
echo showing start message...
toilet -f mono12 -F metal Server
toilet -f mono12 -F metal Builder
cd ~
echo "Version: 2.0"
echo "Written by Joseph/Emeraldtnt!"
echo "Report all bugs and suggestions here: https://github.com/josephworks/serverbuilder/issues"
echo "If you would like to support me check out my paypal link on the plugin page."
sleep 5s
echo "If you are having a problem updating the jars, run the Jars option then try again!"
# echo creating custom commands
# broken for now
# echo %commandhere% > /usr/bin/commands.sh
echo ┍━━━━━━━━━━━━━┑
echo "ServerBuilder>"
echo ┗━━━━━━━━━━━━━┛
PS3='ServerBuilder>'
options=("Spigot" "Bungee" "Waterfall" "Lilypad" "Vanilla" "Paperclip" "Basics" "Forge" "Cauldron" "Sponge" "Jars" "Web" "Travertine" "TacoSpigot" "HexaCord" "craftbukkit" "Torch" "Hose")
select opt in "${options[@]}"
do
    case $opt in
##################################################################################
##                    SERVER SETUP MODULE SCRIPT BY EMERALDTNT                  ##
##      Report errors: https://github.com/josephworks/serverbuilder/issues      ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
        "Spigot")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Spigot.sh
            chmod 770 ./Spigot.sh
            ./Spigot.sh
            ;;
         "Bungee")
            echo "Bungeecord Installer"
            sleep 1
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
            mv BungeeCord.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "Waterfall")
            echo "Waterfall Installer"
            sleep 1
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar
            mv Waterfall.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "Lilypad")
            echo "Lilypad Installer"
            echo "Please note this only is for 64bit based servers!"
            echo "Most servers are, but if you are not sure contact your host!"
            sleep 2
            cd ~
            mkdir Proxy
            cd Proxy
            wget http://ci.lilypadmc.org/job/Go-Server-Proxy/lastSuccessfulBuild/artifact/target/proxy-linux-amd64
            cd ..
            mkdir Connect
            cd Connect
            wget http://ci.lilypadmc.org/job/Go-Server-Connect/lastSuccessfulBuild/artifact/target/connect-linux-amd64
            cd ..
            wget https://buzzzy.co/Hub/ServerSetup/Global/lilyscreen.sh
            chmod 770 lilyscreen.sh
            ./lillyscreen.sh
            ;;
        "Vanilla")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Vanilla.sh
            chmod 770 ./Vanilla.sh
            ./Vanilla.sh
            ;;
        "Paperspigot")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/paperbuild.sh
            chmod 770 ./Paperspigot.sh
            ./Paperspigot.sh
            ;;
        "Basics")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/basics.sh
            chmod 770 ./basics.sh
            ./basics.sh
            ;;
        "Forge")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Forge.sh
            chmod 770 ./Forge.sh
            ./Forge.sh
            ;;
        "Cauldron")
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
            ./Cauldron.sh
            ;;
        "Sponge")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Sponge.sh
            chmod 770 ./Sponge.sh
            ./Sponge.sh
            ;;
        "Jars")
            echo "Attempting to fix jarfile output" 
            cd ~
            rm -rf Jars
            echo "fixed!"
            ;;
        "Web")
            echo "THIS IS IN BETA, PLEASE REPORT ANY ISSUES!"
            sleep 1
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/web.sh
            chmod 770 ./web.sh
            ./web.sh
            ;;
        "Travertine")
            echo "Travertine Installer"
            sleep 1
            cd ~
            mkdir Jars
            cd Jars
            wget https://buzzzy.co/Mirror/Travertine/Travertine.jar
            mv Travertine.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "TacoSpigot")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/TacoSpigot.sh
            chmod 770 ./TacoSpigot.sh
            ./TacoSpigot.sh
            ;;
        "HexaCord")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/HexaCord.sh
            chmod 770 ./HexaCord.sh
            ./HexaCord.sh
            ;;
        "craftbukkit")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/craftbukkit.sh
            chmod 770 ./craftbukkit.sh
            ./craftbukkit.sh
            ;;
        "Torch")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Torch.sh
            chmod 770 ./Torch.sh
            ./Torch.sh
            ;;
        "Hose")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Hose.sh
            chmod 770 ./Hose.sh
            ./Hose.sh
            ;;
        *) echo invalid option, please try again!;;
    esac
    done
