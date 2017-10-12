echo starting...
echo installing dependencies
sudo apt update
sudo apt install toilet figlet maven default-jre
echo showing start message...
echo started
toilet -f mono12 -F metal Server
toilet -f mono12 -F metal Builder
echo "Version: 2.0"
sleep 2
echo "Written by Joseph/Emeraldtnt!"
sleep .3
echo "Report all bugs and suggestions here: https://github.com/josephworks/serverbuilder/issues"
echo "You will need to run the option Basics before anything else for it to work!"
sleep 1
echo "If you would like to support me check out my paypal link on the plugin page."
sleep 2
echo "If you are having a problem updating the jars, run the Jars option then try again!"
cd ~
# echo creating custom commands
# broken for now
# echo %commandhere% > /usr/bin/commands.sh
echo ┍━━━━━━━━━━━━━┑
echo Serverbuilder>
echo ┗━━━━━━━━━━━━━┛