FROM snowdreamtech/alpine:3.20.2

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

ENV JAVA_VERSION=22.0.1_p8-r2 \
    JAVA_HOME=/usr/lib/jvm/default-jvm \
    PATH=${PATH}:${JAVA_HOME}/bin:${JAVA_HOME}/jre/bin

RUN apk add --no-cache openjdk22@testing=${JAVA_VERSION}