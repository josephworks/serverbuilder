##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##   Report config error https://github.com/josephworks/serverbuilder/issues    ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Server Setup 3.0 by Buzzzy"
sleep .6
echo "Sponge Installer"

sleep 1
PS3='What Version would you like to install? '
options=("Vinilla" "SpongeForge" )
select opt in "${options[@]}"
do
    case $opt in
        "Vinilla")
            cd ~
            cd ~/ServerSetup/Scripts/
            chmod 770 SpongeVinilla.sh
            ./SpongeVinilla.sh
            ;;
         "SpongeForge")
            cd ~
            cd ~/ServerSetup/Scripts/
            chmod 770 SpongeForge.sh
            ./SpongeForge.sh
            ;;
        *) echo invalid option;;
    esac
    done