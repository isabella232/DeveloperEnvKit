# Shell 命令集中

### cut

### sed

### nl （给目标查询添加行号 显示）



### 用户相关

#### 用户组

- 查看用户组

  ```bash
  getent group

  cut -d':' -f 1 /etc/group

  compgen -g
  ```

- 查看用户组和用户

  ```bash
  cut -d: -f1 /etc/passwd | xargs groups
  ```

  ​

- 磁盘情况查看

  ```bash
  df 

  df -h /etc

  du -sh /* 2> /dev/null
  ```

- 重定向

  ```
  # 标准输入、标准输出、错误输出 代号分别为 0、1、2

  # > 、 >> 为标准输出
  # < 为标准输入 << 为输入退出指定
  # 2> 为错误输出

  ```

  ​

#### 用户操作

- 添加用户

  ```bash
  adduser ldaqiangl
  passwd ldaqiangl
  su ldaqiangl
  man usermode
  usermode -h
  man usermod
  usermod -aG wheel ldaqiangl
  ```

  ​

- 添加用户到组

- 查看用户

  ```bash
  cat /etc/passwd | cut -d ":" -f1
  # 或者
  getent passwd
  # 或者
  awk -F ':' '{print $1}' /etc/passwd
  # 或者
   compgen -u
   
   # 查询所有登录用户的登录信息
   cut -d ':' -f1 /etc/passwd |head -n 3 | xargs finger
  ```

#### 用户操作脚本

- 查看用户和组

  ```bash
  for user in $(awk -F: '{print $1}' /etc/passwd); do groups $user; done
  或者
  cat /etc/group | awk -F: '{print $1, $3, $4}' | while read group gid members; do
      members=$members,$(awk -F: "\$4 == $gid {print \",\" \$1}" /etc/passwd);
      echo "$group: $members" | sed 's/,,*/ /g';
  done
  ```

  ​



