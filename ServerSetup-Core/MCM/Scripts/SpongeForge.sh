##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Sponge Forge Installer"
sleep 1
PS3='What Version would you like to install? '
options=("1.10.2" "1.11.2" )
select opt in "${options[@]}"
do
    case $opt in
         "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.10.2-2221-5.2.0-BETA-2223/spongeforge-1.10.2-2221-5.2.0-BETA-2223.jar
            mv spongeforge-1.10.2-2221-5.2.0-BETA-2223.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.11.2")
            echo "Please keep in mind this version is experimental"
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.11.2-2227-6.0.0-BETA-2224/spongeforge-1.11.2-2227-6.0.0-BETA-2224.jar
            mv spongeforge-1.11.2-2227-6.0.0-BETA-2224.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done