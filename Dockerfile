FROM alpine:latest
MAINTAINER yilinxiao <406735078@qq.com>
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories  && \
    apk update && \
    apk add --no-cache python3 python3-dev python3-pip  && \
    pip3 install --upgrade pip   && \
    pip3 install jupyter  && \
    rm -rf /var/cache/apk/*
