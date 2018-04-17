### Jailbreak-iOS10.X

#### Question 1

- 越狱方式
  - https://iabem97.github.io/saigon_website/
  - ​

#### Question 2

- SSH 连接iPhone、iPad -  使用USB串口，连接上移动设备，进行ssh登录操作（https://github.com/onlinemediagroup/ocaml-usbmux ）

  1. brew install opam

  2. opam switch 4.02.0

  3. opam install usbmux

  4. 制作mapping 文件 如：

     ![s](/Volumes/Mac/TestFarm/MyResource/DeveloperEnvKit/ios/ssh_login.png)

     > cat mapping_file : 
     >
     > ```
     > 344f3770438521fe20125c6f2c93e513445c5b94:2000:22
     >
     > #[{"udid":"344f3770438521fe20125c6f2c93e513445c5b94","name":"i11", "forwarding": [{"port_local":2000, "device_port":22}, {"port_local":3000, "device_port":1122}]}]
     > ```

  5. ````bash
     sudo `which gandalf` --mappings ~/.gandalf/mapping_file --daemonize --verbose
     ````

  6. ​

  7. gandalf -s , 如图：

     ![s](/Volumes/Mac/TestFarm/MyResource/DeveloperEnvKit/ios/gan_s.png)

  6. ssh root@localhost -p 2000

  7. Enjoy!!!

#### Question 3

- iFile 破解安装
  - 添加源： 

#### Question 4

- ​

