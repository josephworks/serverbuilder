echo starting...
echo installing dependencies
sudo apt-get update
sudo apt install toilet figlet maven default-jre
echo showing start message...
toilet -f mono12 -F metal Server
toilet -f mono12 -F metal Builder
echo creating custom commands
echo %commandhere% > /usr/bin/commands.sh
echo "do /help for help"
echo ┍━━━━━━━━━━━━━┑
echo Serverbuilder>
echo ┗━━━━━━━━━━━━━┛