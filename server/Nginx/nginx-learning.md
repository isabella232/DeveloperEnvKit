### 常用命令

```bash
sudo ln -s /etc/nginx/sites-available/basiccloud.net /etc/nginx/sites-enabled/basiccloud.net
```

```bash
## 验证
sudo nginx -t

## 重新装载
sudo nginx -s reload
```

