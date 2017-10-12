##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report errors: https://github.com/Beags/ServerSetup/issues   ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "
   ▄████████    ▄████████    ▄████████  ▄█    █▄     ▄████████    ▄████████         ▄████████    ▄████████ ███    █▄      ███        ▄███████▄ 
  ███    ███   ███    ███   ███    ███ ███    ███   ███    ███   ███    ███        ███    ███   ███    ███ ███    ███ ▀█████████▄   ███    ███ 
  ███    █▀    ███    █▀    ███    ███ ███    ███   ███    █▀    ███    ███        ███    █▀    ███    █▀  ███    ███    ▀███▀▀██   ███    ███ 
  ███         ▄███▄▄▄      ▄███▄▄▄▄██▀ ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀        ███         ▄███▄▄▄     ███    ███     ███   ▀   ███    ███ 
▀███████████ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀        ▀███████████ ▀▀███▀▀▀     ███    ███     ███     ▀█████████▀  
         ███   ███    █▄  ▀███████████ ███    ███   ███    █▄  ▀███████████               ███   ███    █▄  ███    ███     ███       ███        
   ▄█    ███   ███    ███   ███    ███ ███    ███   ███    ███   ███    ███         ▄█    ███   ███    ███ ███    ███     ███       ███        
 ▄████████▀    ██████████   ███    ███  ▀██████▀    ██████████   ███    ███       ▄████████▀    ██████████ ████████▀     ▄████▀    ▄████▀      
                            ███    ███                           ███    ███                                                                    

Version: 5.5
"
sleep 2
echo "
Written by Buzzy
"
sleep .3
echo "
Report all bugs here: https://github.com/Beags/ServerSetup/issues
"
sleep 1
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            sudo apt update
            sudo apt install wget mysql-server default-jre screen git php5-common libapache2-mod-php5 php5-cli apache2
            /etc/init.d/apache2 restart
            service apache2 restart
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
         "Ubuntu")
            sudo apt update
            sudo apt install wget apache2 mysql-server php5 libapache2-mod-php5 default-jre screen git
            /etc/init.d/apache2 restart
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
         "Centos")
            yum update
            yum install wget
            yum install httpd
            systemctl start httpd.service
            systemctl enable httpd.service
            yum install mariadb-server mariadb
            systemctl start mariadb
            systemctl enable mariadb.service
            mysql_secure_installation
            yum install php php-mysql
            yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel
            systemctl restart httpd.service
            cd /opt/
            wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.tar.gz"
            tar xzf jdk-8u111-linux-x64.tar.gz
            cd /opt/jdk1.8.0_111/
            alternatives --install /usr/bin/java java /opt/jdk1.8.0_111/bin/java 2
            alternatives --config java
            alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_111/bin/jar 2
            alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_111/bin/javac 2
            alternatives --set jar /opt/jdk1.8.0_111/bin/jar
            alternatives --set javac /opt/jdk1.8.0_111/bin/javac
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
        *) echo invalid option;;
    esac
    done