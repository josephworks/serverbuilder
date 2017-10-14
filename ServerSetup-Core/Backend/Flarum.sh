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
echo "Flaurm installer"
sleep .2
echo "You must have run basics before installing this!"
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            apt-get install curl php5-cli git
            php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');"
            php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === 'sha_384_string') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('/tmp/composer-setup.php'); } echo PHP_EOL;"
            php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
            rm -rf /tmp/composer-setup.php
            cd /var/www/html
            composer create-project flarum/flarum . --stability=beta
            echo "Flarum should be installed!"
            echo "Please report any bugs!"
            sleep .3
            ;;
         "Ubuntu")
            apt-get install curl php5-cli git
            php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');"
            php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === 'sha_384_string') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('/tmp/composer-setup.php'); } echo PHP_EOL;"
            php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
            rm -rf /tmp/composer-setup.php
            cd /var/www/html
            composer create-project flarum/flarum . --stability=beta
            echo "Flarum should be installed!"
            echo "Please report any bugs!"
            ;;
         "Centos")
            curl -sS https://getcomposer.org/installer | php
            mv composer.phar /usr/local/bin/composer
            chmod +x /usr/local/bin/composer
            cd /var/www/html
            composer create-project flarum/flarum . --stability=beta
            echo "Flarum should be installed!"
            echo "Please report any bugs!"
            ;;
        *) echo invalid option;;
    esac
    done