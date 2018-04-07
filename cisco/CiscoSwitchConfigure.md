

isco交换机还是比较常用的，于是我研究了一下Cisco交换机命令的大总结，在这里拿出来和大家分享一下，希望对大家有用。我所针对的都是Cisco的设备而言的，华为的可以跟据手册来查，配置都是差不多的，这里华子就不多写华为的设备了，了解的也不是很多。

Cisco交换机命令之使用Telnet远程式管理


switch(config)#interface vlan 1 进入vlan 1
switch(config-if)#ip address 设置IP地址
switch(config-if)#ip default-gateway 设置默认网关
switch(config)#line vty 0 4 进入虚拟终端
switch(config-line)#login 允许登录
switch(config-line)#password xx 设置登录口令
switch#exit 返回命令

Cisco交换机命令之控制台口令

switch(config)#line console 0 进入控制台口
switch(config-line)#login 允许登录
switch(config-line)#password xx 设置登录口令
switch#exit 返回命令

Cisco交换机命令之基本接口配置

switch(config)#interface f0/1 进入f0/1接口
switch(config-if)#duplex full 配置全双工模式
switch(config-if)#speed 100 配置速率
switch(config-if)#description to ***** 接口描述
switch(config)#ip domain-name ***.com 设置或名服务器
switch(config)#mac-address-table aging-time 设置mac表超时时间
switch#write 保存配置信息
switch#copy running-config startup-config 保存当前配置nvram
switch#erase startup-config 清除配置文件

Cisco交换机命令之交换机VLAN设置：

switch#vlan database 进入VLAN设置
switch(vlan)#vlan 2 建VLAN 2
switch(vlan)#name 名字 建VLAN 2的名称
switch(vlan)#no vlan 2 删vlan 2
注:删除vlan时原属于此vlan的端口处于非激活状态,直到重新分配为止。
switch(config)#int f0/1 进入端口1
switch(config-if)#switchport mode access 当前端口工作莫试
switch(config-if)#switchport access vlan 2 当前端口加入vlan 2
switch(config-if)#switchport mode trunk 设置为干线
switch(config-if)#switchport trunk encapsulation dot1q 设置vlan 中继协议
switch(config-if)#no switchport mode 或 ( switchport mode access) 禁用干线
switch(config-if)#switchport trunk allowed vlan add 1，2 ; 从Trunk中添加vlans
switch(config-if)#switchport trunk allowed vlan remove 1，2 ;从Trunk中删除vlans
switch(config-if)#switchport trunk pruning vlan remove 1，2 ;从Trunk中关闭局部修剪

Cisco交换机命令之以太网通道配置

switch(config)#interface range fasternet0/1 - 2 将fasternet0/1和0/2 口捆绑
switch(config-if)#channel-group 1 mode on 配置以太通道模式
switch(config-if)#port-channel load-balance {dst-mac | src-mac}在链路间实现负载均衡
switch#show etherchannel 1 summary 查看通道信息
switch#show etherchannel load-balance 查看通道信息

Cisco交换机命令之vtp配置

switch(config)#vtp domain 设置vtp域名
switch(config)#vtp password 设置vtp密码
switch(config)#vtp mode server 设置vtp服务器模式
switch(config)#vtp mode client 设置vtp客户机模式
switch(config)#vtp mode transparent 设置vtp 透明模式
switch(config)#vtp version 设置vtp版本
switch(config)#vtp pruning 启用vtp修解
switch(config)#no vtp pruning 关闭vtp修解
注:要想从vtp中减少一台交换机只需将该交换机vtp 名更改

Cisco交换机命令之生成树stp：

switch(config)#spanning-tree vlan 启用stp生成树(基于vlan)
switch(config)#spanning-tree vlan root primary 指定根交换机(基于vlan)
switch(config)#spanning-tree vlan root secondary 指定备用根交换机(基于vlan)
switch(config)#spanning-tree vlan priority 指定交换机优先级(基于vlan)
switch(config)#no spanning-tree vlan priority 将交换机的优先级恢复默认值(基于vlan)
switch(config-if)#spanning-tree vlan cost 指定端口成本(起用trunk的端口模式下)
switch(config-if)#spanning-tree vlan port-prioty 指定交换机端口优先级(基于vlan)
switch(config-if)#spanning-tree portfast 配置速端口(连接终端设备的端口状态)如pc机
switch(config)#spanning-tree uplinkfast 配置上行速端口
switch(config)#spanning-tree vlan hello-time 配置交换机hello时间(基于vlan)
switch(config)#spanning-tree vlan forward-time 修改转发延迟计时器(基于vlan)
switch(config)#spanning-tree vlan max-time 修改最大老化时间(基于vlan)
switch#show spanning-tree summery 检测vlan生成树配置
switch#show spanning-tree vlan detail 浏览详细生成树配置信息
switch#show spanning-tree interface detail 浏览详细生成树端口配置信息

Cisco交换机命令之交换机显示命令：

switch#show vtp status 查看vtp配置信息
switch#show running-config 查看当前配置信息
switch#show vlan 查看vlan配置信息
switch#show interface 查看端口信息
switch#show int f0/0 查看指定端口信息
switch#dir flash: 查看闪存
switch#show version 查看当前版本信息
switch#show mac-address-table aging-time 查看mac超时时间
switch#show cdp cisco设备发现协议 (可以查看聆接设备)
switch#show cdp traffic 杳看接收和发送的cdp包统计信息
switch#show cdp neighbors 查看与该设备相邻的cisco设备
switch#show interface f0/1 switchport 查看有关switchport的配置
switch#show cdp neighbors 查看与该设备相邻的cisco设备



