FROM ubuntu:latest  
  
# 安装必要的工具  
RUN apt-get update && apt-get install -y wget tar  
  
# 创建应用目录  
WORKDIR /app  
  
# 下载并解压 FutuOpenD  
RUN wget -O futu_opend.tar.gz "https://www.futunn.com/download/fetch-lasted-link?name=opend-ubuntu" && \  
    tar -xzvf futu_opend.tar.gz -C /tmp && \  
    mv /tmp/Futu_OpenD_*/Futu_OpenD_*/* /app && \  
    rm -rf /tmp/Futu_OpenD_* futu_opend.tar.gz  

# 复制 entrypoint.sh 到 /app 目录  
COPY entrypoint.sh /app/entrypoint.sh  
RUN chmod +x /app/entrypoint.sh  
RUN chmod +x /app/AppData.dat  

# 列出 /app 目录下的文件  
RUN ls -al /app  

# 设置入口点  
ENTRYPOINT ["/app/entrypoint.sh"]  
