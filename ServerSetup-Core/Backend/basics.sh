##################################################################################
##                 SERVER SETUP SCRIPT CREATED BY EMERALDTNT                    ##
##    Report all errors https://github.com/josephworks/serverbuilder/issues     ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
toilet -f mono12 -F metal Server && toilet -f mono12 -F metal Builder
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "This script is useless in server builder but not in server setup script"
echo "
Version: 5.5
"
sleep 2
echo "
Created By EmeraldTnt
"
sleep .3
echo "
Report all bugs here: https://github.com/josephworks/serverbuilder/issues
"
sleep 1
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            apt-get update
            apt-get install wget
            apt-get install mysql-server
            /etc/init.d/apache2 restart
            cd /etc/apt/sources.list.d/
            wget https://buzzzy.co/Hub/serversetup/Debian/java-8-debian.list
            apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
            apt-get update
            apt-get install oracle-java8-installer
            apt-get update
            apt-get install screen
            apt-get install git
            apt-get install apache2
            apt-get install php5-common libapache2-mod-php5 php5-cli
            service apache2 restart
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
         "Ubuntu")
            apt-get update
            apt-get install wget
            apt-get install apache2
            apt-get install mysql-server
            apt-get install php5 libapache2-mod-php5
            /etc/init.d/apache2 restart
            cd /etc/apt/sources.list.d/
            wget https://buzzzy.co/Hub/serversetup/Debian/java-8-debian.list
            apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
            apt-get update
            apt-get install oracle-java8-installer
            apt-get update
            apt-get install screen
            apt-get install git
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