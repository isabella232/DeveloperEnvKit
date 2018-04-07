# 用户和组的管理

**/etc/group文件包含所有组/etc/shadow和/etc/passwd系统存在的所有用户名**

**1，增加用户**

[查看](http://blog.51yip.com/linux/1137.html#)[复制](http://blog.51yip.com/linux/1137.html#)[打印](http://blog.51yip.com/linux/1137.html#)[?](http://blog.51yip.com/linux/1137.html#)

1. [root@krlcgcms01 mytest]# useradd --help
2. Usage: useradd [options] LOGIN
3.
4. Options:
5. -b, --base-dir BASE_DIR       设置基本路径作为用户的登录目录
6. -c, --comment COMMENT         对用户的注释
7. -d, --home-dir HOME_DIR       设置用户的登录目录
8. -D, --defaults                改变设置
9. -e, --expiredate EXPIRE_DATE  设置用户的有效期
10. -f, --inactive INACTIVE       用户过期后，让密码无效
11. -g, --gid GROUP               使用户只属于某个组
12. -G, --groups GROUPS           使用户加入某个组
13. -h, --help                    帮助
14. -k, --skel SKEL_DIR           指定其他的skel目录
15. -K, --key KEY=VALUE           覆盖 /etc/login.defs 配置文件
16. -m, --create-home             自动创建登录目录
17. -l,                           不把用户加入到lastlog文件中
18. -M,                           不自动创建登录目录
19. -r,                           建立系统账号
20. -o, --non-unique              允许用户拥有相同的UID
21. -p, --password PASSWORD       为新用户使用加密密码
22. -s, --shell SHELL             登录时候的shell
23. -u, --uid UID                 为新用户指定一个UID
24. -Z, --selinux-user SEUSER     use a specific SEUSER for the SELinux user mapping

**useradd test**

**passwd test**

增加用户test，有一点要注意的，useradd增加一个用户后，不要忘了给他设置密码，不然不能登录的。

**2，修改用户**

**usermod -d /home/test -G test2 test**

将test用户的登录目录改成/home/test，并加入test2组，注意这里是大G。

**gpasswd -a test test2 ******将用户test加入到test2组
**gpasswd -d test test2** 将用户test从test2组中移出

**3，删除用户**

**userdel test**

将test用户删除

**4，查看用户**

**a），查看当前登录用户**

[root@krlcgcms01 ~]#** w**
[root@krlcgcms01 ~]# **who**

**b），查看自己的用户名**

[root@krlcgcms01 ~]# **whoami**

**c），查看单个用户信息**

[root@krlcgcms01 ~]# **finger apacheuser**
[root@krlcgcms01 ~]#** id apacheuser**

**d），查看用户登录记录**

[root@krlcgcms01 ~]# **last **查看登录成功的用户记录
[root@krlcgcms01 ~]#** lastb **查看登录不成功的用户记录

**e），查看所有用户**

[root@krlcgcms01 ~]# **cut -d : -f 1 /etc/passwd**
[root@krlcgcms01 ~]# **cat /etc/passwd |awk -F \: '{print $1}'*



