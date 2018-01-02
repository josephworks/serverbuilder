echo starting...
#-----------------------------------------------
# main work
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
cd ~
mkdir Jars
cd Jars
chmod 770 screen.sh
echo installing dependencies
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
        "Spigot")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/spigot.sh
            chmod 770 ./spigot.sh
            ./spigot.sh
            ;;
         "Bungee")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Bungee.sh
            chmod 770 ./Bungee.sh
            ./Bungee.sh
            ;;
         "Waterfall")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Waterfall.sh
            chmod 770 ./Waterfall.sh
            ./Waterfall.sh
            ;;
        "Lilypad")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Lilypad.sh
            chmod 770 ./Lilypad.sh
            ./Lilypad.sh
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
            wget https://yivesmirror.com/grab/cauldron/cauldron-1.7.10-2.1403.1.54.zip
            unzip cauldron-1.7.10-2.1403.1.54.zip
            mv cauldron-1.7.10-2.1403.1.54 Jars
            mv cauldron-1.7.10-2.1403.1.54.jar server.jar
            ./screen.sh
            ;;
        "Sponge")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Sponge.sh
            chmod 770 ./Sponge.sh
            ./Sponge.sh
            ;;
        "Jars")
            echo "Fixing jars" 
            cd ~
            rm -rf Jars
            echo "Should be fixed!"
            ;;
        "Web")
            echo "THIS IS IN BETA, PLEASE REPORT ANY ISSUES ON THE GITHUB!"
            sleep 1
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/web.sh
            chmod 770 ./web.sh
            ./web.sh
            ;;
        "Travertine")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/Travertine.sh
            chmod 770 ./Travertine.sh
            ./Travertine.sh
            ;;
        "TacoSpigot")
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/TacoSpigot.sh
            chmod 770 ./TacoSpigot.sh
            ./TacoSpigot.sh
            ;;
        "HexaCord")
            wget https://github.com/HexagonMC/BungeeCord/releases/download/v162/BungeeCord.jar
            mv BungeeCord.jar server.jar
            wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/ServerSetup-Core/Backend/screen.sh
            ./screen.sh
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