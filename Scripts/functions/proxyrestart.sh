##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "ServerBuilder 3.0 by EmeraldTnt"
sleep .2
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            cd ~
            cd Proxy
            chmod 770 ./start.sh
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./start.sh
            "
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Ubuntu")
            cd ~
            cd Proxy
            chmod 770 ./start.sh
            screen -d -m -t Proxy sh start.sh
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Centos")
            cd ~
            cd Proxy
            chmod 770 ./start.sh
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./start.sh
            "
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
        *) echo invalid option;;
    esac
    done