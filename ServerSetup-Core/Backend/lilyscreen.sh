##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "Version: 5.5"
sleep 2
echo "Created By EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/josephworks/serverbuilder/issues"
sleep .2
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            cd ~/Proxy
            wget https://buzzzy.co/ServerSetup/Global/lilyrestart.sh
            chmod +x proxy-linux-amd64
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./proxy-linux-amd64"
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -S Connect -X stuff "./connect-linux-amd64"
            sleep 2
            ;;
         "Ubuntu")
            cd ~/Proxy
            wget https://buzzzy.co/ServerSetup/Global/lilyrestart.sh
            chmod +x proxy-linux-amd64
            screen -d -m -t proxy sh ./proxy-linux-amd64
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -d -m -t connect sh ./connect-linux-amd64
            sleep 2
            ;;
         "Centos")
            cd ~/Proxy
            wget https://buzzzy.co/ServerSetup/Global/lilyrestart.sh
            chmod +x proxy-linux-amd64
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./proxy-linux-amd64"
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -S Connect -X stuff "./connect-linux-amd64"
            sleep 2
            ;;
        *) echo invalid option;;
    esac
    done