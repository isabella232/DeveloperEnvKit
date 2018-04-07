# MySQL

1. Mysql 登录

   ```
   mysql -h ip -u root -p 密码
   ```

2. 用户管理， 设置root用户密码： `dfqqfd123`

   ```bash
   # 以root身份进入mysql
   $ mysql -u root -p
   mysql> alter user 'root'@'localhost' identified by 'dfqqfd123';

   # 查询当前所有数据库
   mysql> show databases;

   # 查询当前用户和密码
   mysql> select User, Password from user;

   # 创建数据库用户 (指定账户名为daqiang,  主机名为localhost， 没有任何特权)
   # 注意：如果没有提供主机名，则假定主机名为“%”，这就意味着该用户可以中任何源主机进行访问
   # jack@'localhost' -- 用户jack只能从本地主机进行连接
   # jack@'192.168.1.5'-- 用户jack可以从主机192.168.1.5进行连接
   # jack@'192.168.1.%' -- 用户jack可以从任何属于192.168.1.0主机进行连接
   # jack@'%' -- 用户jack可以从任何主机进行连接
   # jack@'200:472:18:b51:c32:a21' -- 用户jack可以从主机200:472:18:b51:c32:a21进行连接
   mysql> create user daqiang@localhost identified by "此处是密码";
   # 或者：
   mysql> use mysql;
   mysql> insert into user(host,user,password) values('localhost','daqiang',password('dfqqfd123'));
   mysql> update mysql.user set password=password('dfqqfd123') where User='daqiang' and Host='localhost';

   # 为用户账户授予和撤销特权：
   # ----------------
   # 给特定用户授予对特定数据库中特定表的选择特权:
   # grant select on database.table to username@hostname 
   # #####
   # 给特定用户授予对特定数据库中所有表的选择权:
   # grant select on database.* to username@hostname
   # #####
   # 给特定用户授予对所有数据库中所有表的选择特权:
   # grant select on *.* to username@hostname
   # #####
   # 向特定用户授予特定数据库中，创建，更改，和删除表的特权:
   # grant create,alter,drop on database.* to username@hostname
   # #####
   # 给特定的用户授予对所有数据库的所有可用特权，事实上相当于创建了一个超级用户（类似root）:
   # grant all privileges on *.* to username@hostname
   # -----------------
   # revoke语句可以撤销账户的特权，连接的用户必须具有grant option 特权并且具有要撤销的特权，才能撤销特权:
   # revoke select,update,delete,insert on inventory.category from jack@localhost;

   mysql> grant select on database.table to username@hostname;

   #授予userone管理newDB的全部权限　
   # grant all privileges on dbdata.*@'%' to userone identified by '1234'; 
   # 授予userone全部数据库权限，并修改密码
   # grant all on *.* to 'usertwo'@'%' identified by '123456';  

   # ------------------
   # === 重要 ===
   # 在授予或撤销某项特权以后，将从mysql数据库中的特权表中重新加载所有特权。
   mysql> flush privileges;
   # 显示某个用户授予的特权列表：
   mysql> show grants for username@hostname;

   # 当不需要某个用户时，可以使用drop user username 从数据库将某个用户删除，使用格式与create user相同
   mysql> drop user username@hostname;
   ```

3. 数据库操作

   ```Bash
   mysql> CREATE DATABASE 数据库名;
   mysql> drop database 数据库名;
   	
   　　1、 CREATE DATABASE 数据库名;

   　　2、 GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER  ON 数据库名.* TO 数据库名@localhost IDENTIFIED BY '密码';
   　　#grant all privileges on owncloud.* to daqiang@localhost identified by 'dfqqfd123';
   	
   　　3、 SET PASSWORD FOR '数据库名'@'localhost' = OLD_PASSWORD('密码');

   　　依次执行3个命令完成数据库创建。注意：中文 “密码”和“数据库”是户自己需要设置的。

   　　—————————————————————————————————————————————

   　　现在介绍一些常用的MYSQL命令

   　　注意：你必须首先登录到MYSQL中，以下操作都是在MYSQL的提示符下进行的，而且每个命令以分号结束。

   　　一、操作技巧

   　　1、如果你打命令时，回车后发现忘记加分号，你无须重打一遍命令，只要打个分号回车就可以了。

   　　也就是说你可以把一个完整的命令分成几行来打，完后用分号作结束标志就OK。

   　　2、你可以使用光标上下键调出以前的命令。

   　　二、常用命令

   　　1、显示当前数据库服务器中的数据库列表：

   　　mysql> SHOW DATABASES;

   　　2、建立数据库：

   　　mysql> CREATE DATABASE 库名;

   　　3、建立数据表：

   　　mysql> USE 库名;

   　　mysql> CREATE TABLE 表名 (字段名 VARCHAR(20), 字段名 CHAR(1));

   　　4、删除数据库：

   　　mysql> DROP DATABASE 库名;

   　　5、删除数据表：

   　　mysql> DROP TABLE 表名;

   　　6、将表中记录清空：

   　　mysql> DELETE FROM 表名;

   　　7、往表中插入记录：

   　　mysql> INSERT INTO 表名 VALUES ("hyq","M");

   　　8、更新表中数据：

   　　mysql-> UPDATE 表名 SET 字段名1='a',字段名2='b' WHERE 字段名3='c';

   　　9、用文本方式将数据装入数据表中：

   　　mysql> LOAD DATA LOCAL INFILE "D:/mysql.txt" INTO TABLE 表名;

   　　10、导入.sql文件命令：

   　　mysql> USE 数据库名;

   　　mysql> SOURCE d:/mysql.sql;

   　　11、命令行修改root密码：

   　　mysql> UPDATE mysql.user SET password=PASSWORD('新密码') WHERE  User='root';

   　　mysql> FLUSH PRIVILEGES;

   　　三、一个建库和建表以及插入数据的实例

   　　drop database if exists school; //如果存在sudu则删除

   　　create database sudu; //建立库sudu

   　　use school; //打开库sudu

   　　create table teacher //建立表TEACHER

   　　(

   　　id int(3) auto_increment not null primary key,

   　　name char(10) not null,

   　　address varchar(50) default '深圳',

   　　year date

   　　); //建表结束

   　　//以下为插入字段

   　　insert into teacher values('','allen','飞数科技1','2005-10-10');

   　　insert into teacher  values('','jack','飞数科技2','2005-12-23');如果你在mysql提示符键入上面的命令也可以，但不方便调试。

   　　(1)你可以将以上命令原样写入一个文本文件中，假设为sudu.sql，然后复制到c:\\下，并在DOS状态进入目录\mysql\bin，然后键入以下命令：

   　　mysql -uroot -p密码 < c:\sudu.sql

   　　如果成功，空出一行无任何显示;如有错误，会有提示。(以上命令已经调试，你只要将//的注释去掉即可使用)。

   　　(2)或者进入命令行后使用 mysql> source c:\sudu.sql; 也可以将sudu.sql文件导入数据库中。

   　　四、将文本数据转到数据库中

   　　1、文本数据应符合的格式：字段数据之间用tab键隔开，null值用\n来代替.例：

   　　3 rose 飞数科技1 1976-10-10

   　　4 mike 飞数科技2 1975-12-23

   　　假设你把这两组数据存为速度sudu.txt文件，放在c盘根目录下。

   　　2、数据传入命令 load data local infile "c:\sudu.txt" into table 表名;

   　　注意：你最好将文件复制到\mysql\bin目录下，并且要先用use命令打表所在的库。

   　　五、备份数据库：(命令在DOS的\mysql\bin目录下执行)

   　　1.导出整个数据库

   　　导出文件默认是存在mysql\bin目录下

   　　mysqldump -u 用户名 -p 数据库名 > 导出的文件名

   　　mysqldump -u user_name -p123456 database_name > outfile_name.sql

   　　2.导出一个表

   　　mysqldump -u 用户名 -p 数据库名 表名> 导出的文件名

   　　mysqldump -u user_name -p database_name table_name >  outfile_name.sql

   　　3.导出一个数据库结构

   　　mysqldump -u user_name -p -d --add-drop-table database_name >  outfile_name.sql

   　　-d 没有数据 --add-drop-table 在每个create语句之前增加一个drop table

   　　4.带语言参数导出

   　　mysqldump -uroot -p --default-character-set=latin1 --set-charset=gbk  --skip-opt database_name > outfile_name.sql
   ```

4. sql操作

   ​

5. root用户设置

   ```bash
   整理了以下四种在MySQL中修改root密码的方法,可能对大家有所帮助!

   方法1： 用SET PASSWORD命令

   　　mysql -u root

   　　mysql> SET PASSWORD FOR 'root'@'localhost' = PASSWORD('newpass');

   方法2：用mysqladmin

   　　mysqladmin -u root password "newpass"

   　　如果root已经设置过密码，采用如下方法

   　　mysqladmin -u root password oldpass "newpass"

   方法3： 用UPDATE直接编辑user表

   　　mysql -u root

   　　mysql> use mysql;

   　　mysql> UPDATE user SET Password = PASSWORD('newpass') WHERE user = 'root';

   　　mysql> FLUSH PRIVILEGES;

   在丢失root密码的时候，可以这样

   　　mysqld_safe --skip-grant-tables&

   　　mysql -u root mysql

   　　mysql> UPDATE user SET password=PASSWORD("new password") WHERE user='root';

   　　mysql> FLUSH PRIVILEGES;

    

   设置权限：

    GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin123' WITH GRANT OPTION; flush privileges;

   root默认是不支持远程登录的,用外网连接你必须给权限呢？GRANT ALL PRIVILEGES ON *.* TO 'username'@' %' IDENTIFIED BY 'password' WITH GRANT OPTION;你先创建一个远程登录的账号然后给它远程登录的权限

   mysql的root账户,我在连接时通常用的是localhost或127.0.0.1,公司的测试服务器上的mysql也是localhost所以我想访问无法访问,测试暂停.

   解决方法如下:

   1,修改表,登录mysql数据库,切换到mysql数据库,使用sql语句查看"select host,user from user ;" mysql -u root -pvmwaremysql>use mysql; mysql>update user set host = '%' where user ='root'; mysql>select host, user from user; mysql>flush privileges; 注意:最后一句很重要,目的是使修改生效.如果没有写,则还是不能进行远程连接.

   2,授权用户,你想root使用密码从任何主机连接到mysql服务器 GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin123' WITH GRANT OPTION; flush privileges; 如果你想允许用户root从ip为192.168.1.104的主机连接到mysql服务器 GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'192.168.1.104' IDENTIFIED BY 'admin123' WITH GRANT OPTION; flush privileges;

   路由器外网访问mysql数据库

   1.符合以下条件
   公网IP 无论动态还是静态 静态更好 动态如果嫌麻烦可以用DDNS服务 如花生壳
   2.开放端口
   无论你是否是路由连入 还是拨号连入 路由需要在路由器中做3306端口映射 拨号宽带需要在防火墙中允许3306端口访问 可以用telnet命令测试
   3.MYSQL用户权限 （这里比较重要）
   在安装MYSQL是 ROOT默认是只有本地访问权限 localhost可以在安装的时候改成可以远程remote安装的最后一步 有个选项框要勾 这是WINDOWS版本的 如果是LINUX版本用命令加权限
   如果建立新用户 一定要要有%远程权限才可以
   4测试
   在自带命令行中测试 mysql -h（IP地址） -u用户名 -p（密码） 回车后如果出现mysql> 
   即OK 

    

   以前只会用
   mysql> select * from mysql.user where user='username';

   今天发现这个更方便：
   mysql> show grants for username@localhost;

   show可以看到很多东西
   show create database dbname;  这个可以看到创建数据库时用到的一些参数。
   show create table tickets;    可以看到创建表时用到的一些参数 

    

    

   1、修改表,登录mysql数据库,切换到mysql数据库,使用sql语句查看
   "select host,user from user ;"
   \mysql -u root -pvmwaremysql>use mysql; 
   \mysql>update user set host = '%' where user ='root'; 
   \mysql>select host, user from user; 
   \mysql>flush privileges; 

   注意:最后一句很重要,目的是使修改生效.如果没有写,则还是不能进行远程连接.

   2、授权用户,你想root使用密码从任何主机连接到mysql服务器
   \GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin123' WITH GRANT OPTION;flush privileges;

   如果你想允许用户root从ip为192.168.12.16的主机连接到mysql服务器 
   \GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.16'   IDENTIFIED BY '123456' WITH GRANT OPTION;

    

    

   可以通过对某个用户授权来限制这个连接帐号的访问，比如：
   grant select on db.table1 to user1@'1.2.3.%' identified by 'password';

   这样user1只能在1.2.3.% 这个范围内来访问你的mysql server .
   ```

   ​