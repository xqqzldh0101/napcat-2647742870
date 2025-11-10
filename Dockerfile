FROM docker.ermao.net/mlikiowa/napcat-docker:latest

# 核心配置
ENV NAPCAT_QQ=2647742870
ENV NAPCAT_LOGIN_METHOD=qrcode
ENV NAPCAT_QRCODE_TIMEOUT=180
ENV NAPCAT_AUTO_LOGIN=true

# 解决容器名称问题
ENV NAPCAT_DOCKER_CONTAINER=napcat
ENV NAPCAT_DISABLE_DOCKER_OPS=true

# 性能优化
ENV ELECTRON_DISABLE_GPU=true

WORKDIR /app
RUN mkdir -p /app/napcat/config /app/.config/QQ
RUN chown -R 1000:1000 /app
USER 1000:1000
USER 1000:1000