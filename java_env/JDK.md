# jdk 在各个Linux上的安装

Aha, here Finally can you find out about the various operating system development work on all the latest configuration mode and the corresponding solution of trouble, I hope the same interest people can contribution is put forward！

## 多jdk环境管理

```bash
  244  curl -L -s get.jenv.io | bash
  245  sudo apt install unzip
  246  curl -L -s get.jenv.io | bash
  247  cat /home/ubuntu/.jenv/bin/jenv-init.sh
  248  vim .bashrc 
```

## ubuntu

- 安装器

  ```bash
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java9-installer
  sudo apt-get install oracle-java9-set-default
  ```

- 源文件安装

  ```bash
  http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jdk-9.0.1_linux-x64_bin.tar.gz

  # /usr/lib/jvm/java-9-oracle/bin/
  ```

  ​

## CentOS

