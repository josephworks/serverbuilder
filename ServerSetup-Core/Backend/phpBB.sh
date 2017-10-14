##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##                 Report errors: https://github.com/Beags/ServerSetup/issues   ##
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Version: 5.5"
sleep 2
echo "Created By EmeraldTnt"
sleep .3
echo "Report all bugs here: https://github.com/Beags/ServerSetup/issues"
sleep 1
echo "Installing phpBB"
echo "What should the phpBB database password be?"
read -r Passwordvar
mysql -u root -p -e 'create database phpBB;'
mysql -u root -p -e 'create user phpBB;'
mysql -u root -p -e 'GRANT ALL ON phpBB.* TO 'phpBB'@'localhost';'
mysql -u root -p -e 'USE phpBB update * set password=PASSWORD('$Passwordvar') where User='phpBB';'
cd /var/www/html
wget https://www.phpbb.com/files/release/phpBB-3.2.0.zip
unzip phpBB-3.2.0.zip
mv phpBB3/* .
chmod 777 store
chmod 777 cache
chmod 777 files
chmod 777 images/avatars/upload/
echo "Main install done navagate your browser to: http://yourip/phpBB3/install/app.php"
echo "Your MYSQl Info: databasename: phpBB  user: phpBB password: $Passwordvar"
sleep 2