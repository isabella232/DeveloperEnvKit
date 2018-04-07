# tomcat 配置和安装



1. 下载

   ```
   curl -O http://archive.apache.org/dist/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0.1.tar.gz

   sudo tar xzvf apache-tomcat-9.0.1.tar.gz -C /var/local/

   sudo groupadd tomcat
   sudo useradd -s /bin/false -g tomcat -d /var/local/apache-tomcat-9.0.1/ tomcat
   sudo chgrp -R tomcat /var/local/apache-tomcat-9.0.1
   sudo chown -R tomcat apache-tomcat-9.0.1/

   ```

   ​


