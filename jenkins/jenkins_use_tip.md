#### 获取jenkins job的最近一次构建的 change log

```shell
# 浏览器地址
http://cicd.xzlcorp.com/job/ios-patient-oc-build/$BUILD_NUMBER/api/xml?wrapper=changes&xpath=//changeSet//comment

# 直接获取
curl -s "http://cicd.xzlcorp.com/job/ios-patient-oc-build/$BUILD_NUMBER/api/xml?wrapper=changes&xpath=//changeSet//comment"

```



#### auth 认证登录模式





#### 常用的插件及说明







