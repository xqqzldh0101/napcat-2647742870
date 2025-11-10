FROM docker.ermao.net/mlikiowa/napcat-docker:latest

# 设置环境变量
ENV NAPCAT_QQ=2647742870
ENV NAPCAT_UID=1000
ENV NAPCAT_GID=1000
ENV NAPCAT_LOGIN_METHOD=qrcode
ENV NAPCAT_QRCODE_TIMEOUT=180
ENV NAPCAT_AUTO_LOGIN=true

# 创建必要的目录结构
RUN mkdir -p /app/napcat/config /app/.config/QQ

# 设置权限
RUN chown -R 1000:1000 /app

# 使用非root用户运行
USER 1000:1000