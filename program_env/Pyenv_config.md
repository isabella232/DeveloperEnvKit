1. python 环境配置

   `pyenv`工具用来管理Python版本的切换，`virtualenv`用来管理不同项目中同一个三方组件的版本的定制

   如果安装了pyenv，就需要使用pyenv-virtualenv 插件的方式使用virtualenv，而不能单独使用virtualenv的方式

2. 安装方法

   - Pyenv 安装

     ```shell
     git clone https://github.com/yyuu/pyenv.git ~/.pyenv
     echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
     echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
     echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
     source .bash_profile

     pyenv --help
     ```

     ```shell
     pyenv install --list

     # 可能会安装 zlib的依赖 
       152  brew ls
       153  brew install zlib*
       154  xcode-select --install
       155  brew install zlib
       156  echo $(xcrun --show-sdk-path)
       157  cd $(xcrun --show-sdk-path)/usr/include
       158  ls
       159  pwd
       160  cd ~/
       161  echo $(brew --prefix openssl)
       162  $(brew --prefix openssl)
       163  cd ~/
       164  cd $(brew --prefix zlib)
       165  ls
       166  cd ~/
       167  echo $(brew --prefix zlib)
       168  cd $(brew --prefix zlib)
       169  ls
       170  cd lib
       171  ls
       172  cd ..
       173  ls include
       174  cd ~/
       175  ls
       176  CFLAGS="-I$(brew --prefix openssl)/include" pyenv install -v 3.6.4
       177  pyenv versions
       178  pyenv global 3.6.4
       179  pyenv versions
       180  python3 --version
       181  which python3
       182  pwd
       183  cd ~/
       184  ls
       185  cd /
       186  ls
       187  ls -al
       188  clear
       189  cd ~/
       190  ls
       191  python -v
       192  python --version
       193  history 
       194  pyenv versions
       195  history | grep pyenv
       196  pyenv instal --list
       197  pyenv install --list
       198  CFLAGS="-I$(brew --prefix zlib)/include" pyenv install 2.7.14
       199  pyenv versions
       200  pyenv global 2.7.14
       201  python --version
       202  ls /bin
       203  /usr/bin/python --version
       204  type ssh
       205  type python


     pyenv install -v 3.6.5
     pyenv install -v 2.7.14

     pyenv global 3.6.5
     pyenv versions

     pyenv uninstall
     ```

     ​

   - Pyenv-virtualenv 安装

     ```shell
     git clone https://github.com/yyuu/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
     echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

     pyenv help virtualenv
     ```

     ```shell
     # 创建工作环境
     pyenv virtualenv 2.7.13 first_project
     pyenv virtualenv 3.6.0 second_project

     # 查看工作环境
     pyenv virtualenvs

     # 为不同的项目 安装同一个依赖库不同版本的依赖
     pyenv activate first_project
     pip install flask==0.8
     pyenv activate second_project
     pip install flask==0.9

     # 删除虚拟环境
     pyenv virtualenv-delete first_object
     ```

3. 配置历史记录

   ```bash
       git clone https://github.com/yyuu/pyenv.git ~/.pyenv
       echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
       echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
       pyenv --help
       pyenv --version
       pyenv install --list
       pyenv versions
       ls /Users/daqiang/.pyenv/versions
       cat /Users/daqiang/.pyenv/versions
       pyenv install -v 3.6.4
       pyenv versions
       ls /Users/daqiang/.pyenv/versions
       git clone https://github.com/yyuu/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
       echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
       pyenv help virtualenv
       pyenv virtualenv 2.7.3 first_prj
       pyenv virtualenv
       pyenv virtualenvs
       pyenv install -v 3.6.4
       pyenv install -v 3.6.4
       pyenv versions
       pyenv global 3.6.4
       pyenv versions
       pyenv versions
       pyenv -l
       pyenv -list
       pyenv --list
       pyenv list
       pyenv -h
       pyenv versions
       pyenv install 2.7.6
       pyenv versions
       pyenv global 2.7.6
        pyenv versions
        pyenv global 3.6.4
        pyenv versions
        pyenv global 2.7.6
        pyenv versions
        pyenv global 2
        pyenv global 2.7.6
        pyenv list
        pyenv -help
        pyenv help
        pyenv version --help
        pyenv version
        pyenv versions
        pyenv global 3.6.4
   ```

   ​

