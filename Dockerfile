# 使用官方 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 复制静态资源目录到 Nginx 的默认静态文件目录
COPY games /usr/share/nginx/html/games
COPY src /usr/share/nginx/html/src
COPY thumbs /usr/share/nginx/html/thumbs

# 配置 Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"] 