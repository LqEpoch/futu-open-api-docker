#!/bin/sh  
  
# 使用环境变量替换 <login_account>  
sed -i "s/<login_account>100000<\/login_account>/<login_account>${LOGIN_ACCOUNT}<\/login_account>/" /app/FutuOpenD.xml  
  
# 使用环境变量替换 <login_pwd>  
sed -i "s/<login_pwd>123456<\/login_pwd>/<login_pwd>${LOGIN_PASSWORD}<\/login_pwd>/" /app/FutuOpenD.xml 

# 替换 <ip>  
sed -i "s/<ip>127.0.0.1<\/ip>/<ip>0.0.0.0<\/ip>/" /app/FutuOpenD.xml

# 启动你的应用程序  
exec ./FutuOpenD   
