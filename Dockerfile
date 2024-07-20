FROM snowdreamtech/alpine:3.20.0

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

ENV JAVA_VERSION=8.402.06-r0 \
    JAVA_HOME=/usr/lib/jvm/default-jvm \
    PATH=${PATH}:${JAVA_HOME}/bin:${JAVA_HOME}/jre/bin

RUN apk add --no-cache openjdk8=${JAVA_VERSION}