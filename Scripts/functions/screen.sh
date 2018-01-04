##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "Server Setup 3.0 by EmeraldTnt"
sleep .2
cd ~
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/functions/restart.sh
mkdir MyServer
cd MyServer
cp -R ~/Jars/server.jar ~/MyServer/
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/Scripts/functions/start.sh
wget https://raw.githubusercontent.com/josephworks/serverbuilder/master/eula.txt
chmod 770 ./start.sh
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            screen -dmS myserver sh
            screen -S myserver -X stuff "./start.sh"
            echo "Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Ubuntu")
            screen -d -m -t myserver sh start.sh
            echo "Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Centos")
            screen -dmS myserver sh
            screen -S myserver -X stuff "./start.sh"
            echo "Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
        *) echo invalid option;;
    esac
    done