# ProgrameEnv(编程环境)

## shell环境初始化

```Bash
export PATH=~/bin:~/homebrew/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH=~/homebrew/Cellar/zlib/1.2.11/include:$PATH

export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export JAVA_9_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_HOME
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk9="export JAVA_HOME=$JAVA_9_HOME"

export PATH=:/Users/work/.nvm/versions/node/v9.5.0/bin:/Users/work/homebrew/Cellar/zlib/1.2.11/include:/Users/work/.pyenv/plugins/pyenv-virtualenv/shims:/Users/work/.pyenv/shims:/Users/work/.pyenv/bin:/Users/work/bin:/Users/work/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Wireshark.app/Contents/MacOS

export PATH=$JAVA_HOME:$PATH

```



## 类Linux系统 默认不允许 非root用户 使用1024以下端口 所以使用80端口的话 需要做端口转发

```bash
sudo vim /etc/pf.conf
添加 rdr on lo0 inet proto tcp from any to 127.0.0.1 port 80 -> 127.0.0.1 port 8080 到 pf.conf文件的 rdr-anchor "com.apple/*" 这一行后面。
其中 lo0 通过 ifconfig 看自己那个设备绑定的是127.0.0.1, lo0是这个网络设备的名字。 8080是要转发的端口
sudo pfctl -d
sudo pfctl -f /etc/pf.conf
sudo pfctl -e


https://gist.github.com/kujohn/7209628

Since Mavericks stopped using the deprecated ipfw (as of Mountain Lion), we'll be using pf to allow port forwarding.

####1. anchor file Create an anchor file under /etc/pf.anchors/<anchor file> with your redirection rule like:

rdr pass on lo0 inet proto tcp from any to 127.0.0.2 port 80 -> 127.0.0.1 port 40070
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8088
# rdr pass on lo0 inet proto tcp from any to 127.0.0.1 port 80 -> 127.0.0.1 port 8088
# rdr pass on {lo0,en0} inet proto tcp from any to 103.211.228.142 port {http,https} -> 127.0.0.1 port 32794
# "pfctl -s info" can look up the result

####2. Test the anchor file Parse and test your anchor file to make sure there are no errors:

sudo pfctl -vnf <anchor file>
####3. Reference the anchor in pf.conf /etc/pf.conf is the main configuration file that pf loads at boot. We'll need to load the anchor file we previously created:

rdr-anchor "forwarding"
load anchor "forwarding" from "/etc/pf.anchors/<anchor file>"
Make sure to add these entries to the appropriate spot.

####4. Load and enabling pf pf is not enabled by default in Mavericks, few ways to enable this:

Manually load and enable from a pf.conf file via sudo pfctl -ef <pf.conf file>

Auto enable by creating a launch daemon via this doc to run pfctl -ef <pf.conf file> on boot.

Auto enable by adding an -e(enable) to the pfctl ProgramArgument in /System/Library/LaunchDaemons/com.apple.pfctl.plist like this:

<key>ProgramArguments</key>
<array>
<string>pfctl</string>
<string>-e</string>
<string>-f</string>
<string>/etc/pf.conf</string>
</array>
####5. Forwarding across interfaces By default, pf does not forward between interfaces. Here's a snippet from man for pfctl with help from 2sidedfigure:

The packet filter does not itself forward packets between interfaces.  Forwarding can be enabled by setting the sysctl(8) variables net.inet.ip.forwarding and/or net.inet6.ip6.forwarding to 1.  Set them permanently in sysctl.conf(5).
We'll need to enable this by adding to /etc/sysctl.conf:
## sudo sysctl net.inet.ip.forwarding=1
## sudo sysctl net.inet6.ip6.forwarding=1

net.inet.ip.forwarding=1
net.inet6.ip6.forwarding=1
Caution
There is the possibility that pf.conf will be overriden with updates to the OS. It might be best to create your own pf config file and load them in additon to the main pf.conf to prevent this.



```





## HomeBrew

```
autoconf		automake		gdbm			libgpg-error		libtool			openssl			pcre			readline		sqlite			xz			zsh-syntax-highlighting
autojump		coreutils		gradle			libksba			libyaml			openssl@1.1		pkg-config		ruby			watchman		yarn
```





## Shell





## Node 

```bash
### nvm

```





## Python





## Go





## Ruby







# Utils



### MySQL

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
   mysql> insert into user(host,user,password) values('localhost','hail',password('hail'));
   mysql> update mysql.user set password=password(’123456′) where User=’test1′ and Host=’localhost’;

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

   # ------------------
   # === 重要 ===
   # 在授予或撤销某项特权以后，将从mysql数据库中的特权表中重新加载所有特权。
   mysql> flush privileges;
   # 显示某个用户授予的特权列表：
   mysql> show grants for username@hostname;

   # 当不需要某个用户时，可以使用drop user username 从数据库将某个用户删除，使用格式与create user相同
   mysql> drop user username@hostname;
   ```

3. 数据库创建

   ```
   mysql> drop database 数据库名;
   ```

   ​



## Docker



## Jenkins



## Git

```bash
# centos
yum install git
#
```







# DriversEnv(驱动程序)



## 网卡



## 显卡



## 声卡





# 常用命令备忘

## 1.查看和修改Linux用户密码

LINUX VPS没有ROOT权限是很难受的事，并且密码登陆也方便一些。
我的AWS VPS的LINUX版本是UBUNTU 13.10，首先用AWS证书验证的账户登录，
1、修改ROOT密码
sudo passwd root
2、sudo chmod 777 /etc/ssh/sshd_config
用完再把权限改回来
3、vi /etc/ssh/sshd_config
PermitRootLogin
这行改为
PermitRootLogin yes
PasswordAuthentication no
上面的no改为yes
————-centos此步不需做—————
UsePAM yes
上面的yes改为no
—————————-
4、重启AWS VPS，就可以使用root正常登陆了

*