##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .6
echo "Sponge Vanilla Installer"
sleep 1
PS3='What Version would you like to install? '
options=("1.10.2" "1.8.9" )
select opt in "${options[@]}"
do
    case $opt in
         "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongevanilla/1.10.2-5.2.0-BETA-381/spongevanilla-1.10.2-5.2.0-BETA-381.jar
            mv spongevanilla-1.10.2-5.2.0-BETA-381.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.8.9")
            echo "Please keep in mind this version is no longer supported by sponge"
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongevanilla/1.8.9-4.2.0-BETA-352/spongevanilla-1.8.9-4.2.0-BETA-352.jar
            mv spongevanilla-1.8.9-4.2.0-BETA-352.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done