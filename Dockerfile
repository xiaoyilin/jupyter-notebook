FROM alpine:latest
MAINTAINER yilinxiao <406735078@qq.com>
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories  && \
    apk update && \
    apk add --no-cache python3 python3-dev python3-pip  && \
    pip3 install --upgrade pip   && \
    pip3 install jupyter  && \
#/root/.jupyter/jupyter_notebook_config.py
    jupyter notebook --generate-config  && \
    rm -rf /var/cache/apk/*
EXPOSE 8888
#jupyter notebook --port 8888  --no-browser
CMD ["jupyter notebook","--port 8888","--no-browser"]
