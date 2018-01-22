# QA测试环境部署

### Testlink 安装和部署(Unbunt OS)

1. Apache2 安装和配置

   ```Sh
   apt-get update
   sudo apt-get install apache2
   sudo service apache2 start
   sudo update-rc.d apache2 defaults
   sudo service apache2 stop


   cat /etc/apache2/apache2.conf
   sudo vim ports.conf

   sudo apt-get install nginx-extras

   ```

   ​

2. php 及其功能组件安装和配置

   ```sh
   sudo apt-get install php5-fpm php5-pgsql php5-gd php5-ldap php5-json
   apt-get install php5-common libapache2-mod-php5 php5-cli

   ```

   ​

3. 数据库服务安装和配置（postgres / MySql）

   略

4. testkink安装

   ```sh
   wget https://sourceforge.net/projects/testlink/files/TestLink%201.9/TestLink%201.9.16/testlink-1.9.16.tar.gz/download
   tar xvf testlink-1.9.10.tar.gz
   mv testlink-1.9.10 /var/www/html/testlink
   ```

5. 参考链接

   http://yangacer.blogspot.jp/2014/05/testlink-on-ubuntu_9.html

   http://www.cnblogs.com/AryaZ/p/6296328.html

   https://lfestivalet.wordpress.com/2012/09/27/part-3-testlink-installation/

   ​

6. 问题记录

   - testlink各个目录权限和归属用户和组的问题
   - ​

7. 配置历史记录

   ```Bash
       1  sudo apt-get install apache2
       2  apt-get update
       3  sudo apt-get update
       4  sudo apt-get install apache2
       5  sudo service apache2 start
       6  sudo update-rc.d apache2 defaults
       7  cd /var/www/
       8  ls
       9  cat html/
      10  cd html/
      11  ls
      12  cat index.html
      13  exit
      14  ps -aux | grep apa
      15  history
      16  sudo service apache2 stop
      17  ps -aux | grep apa
      18  sudo service apache2 start
      19  ps -aux | grep apa
      20  sudo find / -name httpd*
      21  sudo find / -name "httpd*" 2>> /dev/null
      22  sudo find / -name "apache*" 2>> /dev/null
      23  cat /etc/apache2/apache2.conf
      24  cd /etc/apache2/
      25  ls
      26  vim ports.conf
      27  sudo vim ports.conf
      28  history | grep apache2.conf
      29  history | grep apache
      30  sudo service apache2 restart
      31  ps -aux | grep apa
      32  curl http://10.16.2.190:8081
      33  sudo vim ports.conf
      34  ls sites-enabled/
      35  cat sites-enabled/000-default.conf
      36  ls -al sites-enabled/
      37  sudo vim sites-available/000-default.conf
      38  cat ports.conf
      39  ls
      40  sudo vim apache2.conf
      41  history | grep apache
      42  sudo service apache2 stop
      43  sudo service apache2 start
      44  history | grep curl
      45  curl http://10.16.2.190:8080
      46  netstat -lnp
      47  iptables -L -n
      48  sudo iptables -L -n
      49  sudo service iptables stop
      50  iptables restart
      51  sudo iptables -h
      52  ls
      53  ls conf-available/
      54  sudo vim ports.conf
      55  sudo vim sites-enabled/000-default.conf
      56  sudo service apache2 resart
      57  sudo service apache2 restart
      58  exit
      59  sudo apt-get install docker
      60  docker ps
      61  username -r
      62  usrname -r
      63  uname -r
      64  sudo apt-get install     linux-image-extra-$(uname -r)     linux-image-extra-virtual
      65  sudo apt-get install docker-ce
      66  curl -fsSL get.docker.com -o get-docker.sh
      67  ls
      68  sudo sh get-docker.sh --mirror Aliyun
      69  docker ps
      70  sudo docker ps
      71  sudo docker login repo
      72  sudo systemctl enable docker
      73  sudo service enable docker
      74  sudo service start docker
      75  ps -aux | grep docker
      76  sudo service docker start
      77  docker run hello-world
      78  sudo docker run hello-world
      79  docker ps
      80  sudo docker ps
      81  sudo docker images
      82  sudo docker run helo
      83  sudo docker login
      84  sudo docker run helo
      85  sudo docker run hello-world
      86  sudo docker ps
      87  sudo docker run hello-world
      88  sudo docker ps
      89  exit
      90  cd /var/www/
      91  ls
      92  cd html/
      93  ls
      94  cat index.html
      95  touch test.php
      96  cut -d : -f 1 /etc/passwd
      97  sudo su www-data
      98  sudo touch test.php
      99  sudo vim test.php
     100  sudo service apache2 start
     101  sudo apt-get install php5
     102  apt-get install php5-common libapache2-mod-php5 php5-cli
     103  sudo apt-get install php5-common libapache2-mod-php5 php5-cli
     104  sudo service apache2 restart
     105  cd /etc/php5/
     106  ls
     107  cd fpm/
     108  ls
     109  vim php.ini
     110  sudo service php5-fpm restart
     111  cd /
     112  cd ~/
     113  ls
     114  cd /var/www/
     115  ls
     116  cd html/
     117  ls
     118  sudo find / -name "testlink*"
     119  sudo find / -name "*testlink*"
     120  history
     121  hisotry | grep wget
     122  history | grep wget
     123  exit
     124  ls
     125  tar xvf testlink-1.9.16.tar.gz
     126  ls
     127  mv testlink-1.9.16 /var/www/html/testlink
     128  sudo mv testlink-1.9.16 /var/www/html/testlink
     129  ls
     130  cd /var/www/html/
     131  ls
     132  cd testlink/
     133  ls
     134  cd ..
     135  ls
     136  sudo mkdir /var/testlink/logs/
     137  sudo mkdir /var/testlink
     138  sudo mkdir /var/testlink/logs/
     139  sudo mkdir /var/testlink/upload_area/
     140  ls
     141  ls -al
     142  history | grep cut
     143  cut -d : -f 1 /etc/passwd
     144  cd ../..
     145  pwd
     146  sudo chown -R ubuntu www/
     147  ls -al
     148  sudo chgrp -R ubuntu www/
     149  cd www/html/
     150  ls -al
     151  find . | xargs grep -ri "templates_c" -l
     152  cd /testlink/
     153  cd testlink/
     154  vim config.inc.php
     155  ls
     156  cd ..
     157  chmod -R 777 test
     158  sudo chmod -R 777 test
     159  sudo chown ubuntu testlink/
     160  sudo chown -R ubuntu testlink/
     161  sudo chown -r 777 testlink/
     162  cd testlink/
     163  cd /var/testlink/
     164  ls
     165  ls -al
     166  cd ..
     167  ls
     168  ls -al
     169  sudo chown -R ubuntu testlink/
     170  sudo chgrp -R ubuntu testlink/
     171  cd testlink/
     172  ls -al
     173  sudo chown 777 logs/
     174  sudo chown 777 upload_area/
     175  ls -al
     176  cd logs/
     177  ls
     178  cd ..
     179  cd /var/www/html/
     180  cd testlink/
     181  ls | grep gui
     182  ls -al
     183  chown 777 gui/
     184  sudo chown 777 gui/
     185  cd ../..
     186  ls
     187  cd ..
     188  ls
     189  chmod -R 777 /upload
     190  chmod -R 777 www/
     191  sudo chmod -R 777 www/
     192  sudo chmod -R 777 testlink/
     193  ping 172.16.10.13
     194  exit
     195  ping dev.cuauwtxtbfew.rds.cn-north-1.amazonaws.com.cn
     196  ping 54.222.158.44
     197  ping 10.16.2.13
     198  exit
     199  ping 172.31.2.214
     200  ping dev.cuauwtxtbfew.rds.cn-north-1.amazonaws.com.cn
     201  ping
     202  ping 172.31.2.214
     203  ping 10.16.2.13
     204  ping 172.16.10.13
     205  ping 172.16.10.1
     206  ping 172.31.2.214
     207  cd /etc/apache2/
     208  ls
     209  sudo vim apache2.conf
     210  sudo service apache2 restart
     211  sudo vim apache2.conf
     212  sudo service apache2 restart
     213  exit
     214  ls
     215  history
     216  sudo docker ps
     217  docker ps -a
     218  sudo docker ps -a
     219  apache2 -v
     220  which apache2
     221  sudo service apache2 stop
     222  sudo apt-get install php7
     223  sudo apt-get install php
     224  sudo apt-get update
     225  sudo apt-get install php7
     226  sudo apt-get install php5-fpm php5-pgsql php5-gd php5-ldap php5-json
     227  sudo find / -name "php*" 2>> /dev/null
     228  wget https://sourceforge.net/projects/testlink/files/TestLink%201.9/TestLink%201.9.16/testlink-1.9.16.tar.gz/download
     229  history
   ```

   ​


