##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "ServerBuilder 3.0 by EmeraldTnt"
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