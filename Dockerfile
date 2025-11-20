# ---------- 阶段 1：构建 ----------
    FROM node:20-alpine AS build
    WORKDIR /app
    
    # 依赖
    COPY package*.json ./
    RUN npm ci
    
    # 源码
    COPY . .
    
    # 你的脚本是 docs:build -> 输出到 docs/.vitepress/dist
    RUN npm run docs:build
    
    # ---------- 阶段 2：Nginx 托管 ----------
    FROM nginx:alpine
    
    # 关键：移除默认站点，彻底避免冲突
    RUN rm -f /etc/nginx/conf.d/default.conf
    
    # 拷贝产物 & 配置
    COPY --from=build /app/docs/.vitepress/dist /usr/share/nginx/html
    COPY nginx.conf /etc/nginx/nginx.conf
    
    # 现在这个容器会监听 80 和 443
    EXPOSE 80 443
    
    CMD ["nginx","-g","daemon off;"]
    