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
sleep 1
echo "YOU MUST HAVE UPLOADED YOUR XENFORO .ZIP TO /VAR/WWW/HTML FOR THIS TO WORK"
sleep .5
echo "What is the name of the xenforo zip you downloaded?"
read -r Xenforovar
echo "Installing Xenforo"
echo "What should the xenforo database password be?"
read -r Passwordvar
mysql -u root -p -e 'create database xenforo;'
mysql -u root -p -e 'create user xenforo;'
mysql -u root -p -e 'GRANT ALL ON xenforo.* TO 'xenforo'@'localhost';'
mysql -u root -p -e 'USE xenforo update * set password=PASSWORD('$Passwordvar') where User='xenforo';'
cd /var/www/html
unzip $Xenforovar.zip
mv xenforo/* .
chmod 777 data
chmod 777 internal_data
echo "Main install done navagate your browser to: http://yourip/install"
echo "Your MYSQl Info: databasename: xenforo user: xenforo password: $Passwordvar"
sleep 2