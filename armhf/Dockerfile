FROM arm32v7/debian:buster-slim
MAINTAINER Leonardo Loures <luvres@hotmail.com>

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN \
    cd && \
    apt-get update && \
    apt-get install -y \
        r-base \
        r-base-dev 

WORKDIR /root
