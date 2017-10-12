echo starting...
echo installing dependencies
sudo apt update
sudo apt install toilet figlet maven default-jre
echo showing start message...
toilet -f mono12 -F metal Server
toilet -f mono12 -F metal Builder
# echo creating custom commands
# broken for now
# echo %commandhere% > /usr/bin/commands.sh
echo "do /help for help"
echo ┍━━━━━━━━━━━━━┑
echo Serverbuilder>
echo ┗━━━━━━━━━━━━━┛