# 配置https证书











### 备忘

```bash

  757  sudo /usr/bin/certbot renew --pre-hook "service nginx stop" --post-hook "service nginx start"
  767  sudo certbot certonly --email ops@xinzhili.cn --standalone -d zipkin.xzlcorp.com
  769  sudo certbot certonly --email ops@xinzhili.cn --standalone -d zipkin.xzlcorp.com
  773  sudo certbot certonly --email ops@xinzhili.cn --standalone -d pan.xzlcorp.com
  775  sudo certbot certonly --email ops@xinzhili.cn --standalone -d pan.xzlcorp.com
  783  certbot --help
  784  certbot renew
  785  sudo certbot renew
  787  sudo certbot renew
  791  sudo certbot certonly --email ops@xinzhili.cn --standalone -d jenkins.xzlcorp.com
  792  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d jenkins.xzlcorp.com  && sudo service nginx start
  793  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d git.xzlcorp.com  && sudo service nginx start
  796  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d registry.xzlcorp.com  && sudo service nginx start
  840  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d pan.xzlcorp.com  && sudo service nginx start
  856  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d git.xzlcorp.com  && sudo service nginx start
  858  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d git.xzlcorp.com  && sudo service nginx start
  859  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d jenkins.xzlcorp.com  && sudo service nginx start
  861  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d registry.xzlcorp.com  && sudo service nginx start
  862  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d pan.xzlcorp.com  && sudo service nginx start
  865  certbot list
  870  certbot
  871  certbot list
  872  certbot renew /etc/letsencrypt/renewal/git.xzlcorp.com.conf
  900  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d git.xzlcorp.com  -d jenkins.xzlcorp.com && sudo service nginx start
  901  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d registry.xzlcorp.com  && sudo service nginx start
  908  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d git.xzlcorp.com  && sudo service nginx start
  909  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d jenkins.xzlcorp.com  && sudo service nginx start
  942  vim certbot.log
 1236  sudo service nginx stop && sudo certbot certonly --standalone --email ops@xinzhili.cn -d pan.xlzocorp.com && sudo service nginx start
```

