# OwnCloud 私有云搭建



```Bash
	1  ls -al
    2  apt install -y apache2 mariadb-server libapache2-mod-php7.0     php7.0-gd php7.0-json php7.0-mysql php7.0-curl     php7.0-intl php7.0-mcrypt php-imagick     php7.0-zip php7.0-xml php7.0-mbstring
    3  sudo apt install -y apache2 mariadb-server libapache2-mod-php7.0     php7.0-gd php7.0-json php7.0-mysql php7.0-curl     php7.0-intl php7.0-mcrypt php-imagick     php7.0-zip php7.0-xml php7.0-mbstring
    4  echo $LOCAL
    5  lcoal
    6  local
    7  echo $LANG
    8  export LC_CTYPE=en_US.UTF-8
    9  echo $LC_CTYPE
   10  export LC_ALL=en_US.UTF-8
   11  echo $LC_ALL
   12  sudo apt install -y apache2 mariadb-server libapache2-mod-php7.0     php7.0-gd php7.0-json php7.0-mysql php7.0-curl     php7.0-intl php7.0-mcrypt php-imagick     php7.0-zip php7.0-xml php7.0-mbstring
   13  wget https://download.owncloud.org/community/owncloud-10.0.7.tar.bz2
   14  ls
   15  tar -xjf owncloud-10.0.7.tar.bz2
   16  ls
   17  ls owncloud
   18  ls /var/www/
   19  cat /var/www/html/
   20  cd /var/www/html/
   21  ls
   22  cat index.html
   23  cd ~/
   24  cp -r owncloud /var/www/
   25  sudo cp -r owncloud /var/www/
   26  ls
   27  cd /var/www/
   28  ls
   29  cd /etc/apache2/sites-available/
   30  ls
   31  ls -al
   32  sudo vim owncloud.conf
   33  ls
   34  ls ../sites-enabled/
   35  sudo vim 000-default.conf
   36  service apache restart
   37  apache restart
   38  apache2 restart
   39  sudo vim 000-default.conf
   40  ls
   41  sudo vim owncloud.conf
   42  ln -s /etc/apache2/sites-available/owncloud.conf /etc/apache2/sites-enabled/owncloud.conf
   43  sudo ln -s /etc/apache2/sites-available/owncloud.conf /etc/apache2/sites-enabled/owncloud.conf
   44  a2enmod rewrite
   45  sudo a2enmod rewrite
   46  a2enmod headers
   47  sudo a2enmod headers
   48  sudo a2enmod env
   49  sudo a2enmod dir
   50  sudo a2enmod mime
   51  sudo vim owncloud.conf
   52  service apache2 restart
   53  sudo service apache2 restart
   54  sudo a2enmod ssl
   55  sudo a2ensite default-ssl
   56  service apache2 reload
   57  sudo service apache2 reload
   58  chown -R www-data:www-data /var/www/owncloud/
   59  sudo chown -R www-data:www-data /var/www/owncloud/
   60  ls
   61  sudo vim 000-default.conf
   62  sudo service apache2 reload
   63  sudo service apache2 restart
   64  sudo vim 000-default.conf
   65  sudo vim owncloud.conf
   66  sudo vim 000-default.conf
   67  sudo service apache2 restart
   68  ps -e | grep mysql
   69  mysql
   70  sudo mysql
   71  mysql -u root -p
   72  mysql -u dev -p
   73  mysql
   74  sudo mysql -v
   75  sudo mysql version
   76  sudo mysql --version
   77  ps -ef | grep mysqld
   78  mysql -u root -p
   79  sudo mysql -u root -p
   80  sudo mysql -u admin -p
   81  exit
   82  php -v
   83  ps -e | grep apache
   84  cd /etc/apache2/
   85  ls
   86  ls -al
   87  sudo systemctl restart networking.service
   88  sudo ip add flush ens160
   89  sudo systemctl restart networking.service
   90  sudo
   91  sudo vim /etc/network/interfaces
   92  sudo ip addr flush ens160
   93  sudo systemctl restart networking.service
   94  ifconfig
   95  ls /etc/
   96  ls /etc/ | grep work
   97  sudo service network-manager restart
   98  sudo /etc/init.d/networking restart
   99  sudo vim /etc/network/interfaces
  100  sudo apt-get update
  101  ping 172.16.10.1
  102  sudo apt-get update
  103  sudo vim /etc/network/interfaces
  104  sudo /etc/init.d/networking restart
  105  ping 172.16.10.1
  106  sudo networkctl help
  107  sudo /etc/init.d/networking restart
  108  sudo dhclient eth0
  109  sudo dhclient ens160
  110  ifconfig
  111  ifconfig ens160 down && ifconfig ens160 up
  112  sudo ifconfig ens160 down && ifconfig ens160 up
  113  sudo ifconfig ens160 down && sudo ifconfig ens160 up
  114  sudo vim /etc/network/interfaces
  115  sudo ifconfig ens160 down && sudo ifconfig ens160 up
  116  ping 172.16.10.1
  117  sudo vim /etc/resolv.conf
  118  ping 172.16.10.1
  119  sudo vim /etc/network/interfaces
  120  sudo ifconfig ens160 down && sudo ifconfig ens160 up
  121  ping 172.16.10.1
  122  cd /etc/apache2/sites-available/
  123  ls
  124  cat owncloud.conf
  125  cat 000-default.conf
  126  cd ..
  127  ls
  128  cd ~/
  129  exit
  130  ls
  131  rm -rf owncloud
  132  rm openvpn-install-2.4.5-I601.exe
  133  history
  134  mysql
  135  sudo mysql -u root -p
  136  sudo mysql -u admin -p
  137  exit
  138  ls
  139  wget https://github.com/GNS3/gns3-gui/releases/download/v2.1.3/GNS3.VM.VMware.ESXI.2.1.3.zip
  140  exit
  141  ls
  142  exit
  143  history
```

