# 富途牛牛OpenAPI Docker镜像

## 镜像源
### GitHUB镜像源

```Shell
sudo docker run -it -e LOGIN_ACCOUNT=<富途牛牛账号> -e LOGIN_PASSWORD=<富途牛牛密码> -p 11111:11111 ghcr.io/lqepoch/futuapi_docker:latest /bin/bash  
```

### Docker镜像源
```Shell
sudo docker run -it -e LOGIN_ACCOUNT=<富途牛牛账号> -e LOGIN_PASSWORD=<富途牛牛密码> -p 11111:11111 lqepoch/futuapi_docker:latest /bin/bash  
```

### 阿里云镜像源
```Shell
sudo docker run -it -e LOGIN_ACCOUNT=<富途牛牛账号> -e LOGIN_PASSWORD=<富途牛牛密码> -p 11111:11111 registry.cn-hongkong.aliyuncs.com/lqepoch/futuapi_docker:latest /bin/bash  
```

### 输入手机验证码
```Shell
input_phone_verify_code -code=
```
