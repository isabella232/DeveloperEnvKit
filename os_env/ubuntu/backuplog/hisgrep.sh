
#!/bin/bash

# # LOCAL-NAT 172.31.1.121 54.222.158.44 ec2-user
# # LOCAL-JENKINS-NODE 172.31.2.237 ubuntu
# # LOCAL-SERVICE-4 172.31.2.38 ubuntu
# # LOCAL-EUREKA-CONFIG 172.31.2.214 ubuntu

# ip_list=(172.31.2.237 172.31.2.38 172.31.2.214)
# declare -a myfilenames
# for ip_add in ${ip_list[@]}
# do
#     # echo ubuntu@${ip_add}
#     scp -i xinzhili-dev.pem -r ubuntu@${ip_add}:'$HOME/${myfilename}' ~/Desktop
# done

# # scp -i xinzhili-dev.pem -r ec2-user@172.31.1.121:'$HOME' ~/Desktop

# LOCAL-NAT 172.31.1.121 54.222.158.44 ec2-user
# LOCAL-JENKINS-NODE 172.31.2.237 ubuntu
# LOCAL-SERVICE-4 172.31.2.38 ubuntu
# LOCAL-EUREKA-CONFIG 172.31.2.214 ubuntu

# ip_list=(172.31.2.237 172.31.2.38 172.31.2.214) # local
# ip_list=(172.31.2.237 172.31.2.38 172.31.2.214)

# 10.16.1.25
# ip_list=(10.16.1.85 10.16.2.13 10.16.2.162 10.16.2.145) # share

# 10.0.0.250 PROD-NAT ^
ip_list = (
	
	54.222.188.178
	# 10.0.0.6 # PROD-NGINX ^ 
	# 10.0.2.61 # PROD-A-GHOST ^
	# 10.0.2.214 # PROD-B-1 ^
	# 10.0.2.51 # PROD-B-2 ^
	# 10.0.2.49 # PROD-B-3 ^
	# 10.0.2.180 # PROD-B-4 ^
	# 10.0.1.252 # PROD-A-EUREKA-CONFIG ^
	# 10.0.1.208 # PROD-SENTRY ^
	# 10.0.1.65 # PROD-A-2 ^
	# 10.0.1.71 # PROD-A-3 ^
	# 10.0.1.109 # PROD-A-4 ^
	# 10.0.1.237 # PROD-A-1
) # prod

for ip_add in ${ip_list[@]}
do
    myfilename=$(ssh -i xinzhili-prod.pem ubuntu@${ip_add} 'echo `ls | grep daqiang`')
    scp -i xinzhili-prod.pem ubuntu@${ip_add}:'$HOME/'${myfilename} ~/Desktop
    # echo ${ip_add}
done

# scp -i xinzhili-dev.pem ubuntu@172.31.2.237:'$HOME/LOCAL-JENKINS-NODE-daqiang-his.txt' ~/Desktop
# scp -i xinzhili-dev.pem ubuntu@172.31.2.38:'$HOME/LOCAL-SERVICE-4-daqiang-his.txt' ~/Desktop
# scp -i xinzhili-dev.pem ubuntu@172.31.2.214:'$HOME/LOCAL-EUREKA-CONFIG-daqiang-his.txt' ~/Desktop

# scp -i xinzhili-dev.pem -r ec2-user@172.31.1.121:'$HOME' ~/Desktop







