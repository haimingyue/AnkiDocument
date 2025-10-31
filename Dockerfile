# ---------- 阶段 1：构建 VitePress ----------
    FROM node:20-alpine AS build

    # 工作目录
    WORKDIR /app
    
    # 拷贝依赖文件并安装（ci 更快、更稳定）
    COPY package*.json ./
    RUN npm ci
    
    # 拷贝源代码
    COPY . .
    
    # 构建静态文件
    RUN npm run docs:build
    
    
    # ---------- 阶段 2：用 Nginx 托管 ----------
    FROM nginx:alpine
    
    # 拷贝构建产物到 nginx 默认目录
    COPY --from=build /app/docs/.vitepress/dist /usr/share/nginx/html
    
    # 替换默认配置（可选）
    # COPY nginx.conf /etc/nginx/conf.d/default.conf
    
    # 暴露端口
    COPY nginx.conf /etc/nginx/nginx.conf
    EXPOSE 80
    
    # 启动 nginx
    CMD ["nginx", "-g", "daemon off;"]
    