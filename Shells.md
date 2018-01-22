# Shell 命令集中

### 系统相关

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



