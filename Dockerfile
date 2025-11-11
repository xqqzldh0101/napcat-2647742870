FROM docker.ermao.net/mlikiowa/napcat-docker:latest

# 必需的环境变量
ENV NAPCAT_QQ=2647742870

# 为云环境创建配置目录
RUN mkdir -p /app/napcat/config /app/.config/QQ

# 设置工作目录
WORKDIR /app

# 暴露应用端口（请确认实际端口）
EXPOSE 8080

# 添加健康检查（可选但推荐）
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

