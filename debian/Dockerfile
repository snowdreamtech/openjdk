FROM snowdreamtech/debian:12.10.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="OpenJDK Image Based On Debian" \
    org.opencontainers.image.description="Docker Images for OpenJDK on Debian. (i386,amd64,arm32v5,arm32v7,arm64,mips64le,ppc64le,s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/openjdk" \
    org.opencontainers.image.base.name="snowdreamtech/openjdk:debian" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/openjdk" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="17.0.15" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/openjdk"

ENV JAVA_VERSION=17.0.15+6-1~deb12u1

ARG GID=1000 \
    UID=1000  \
    USER=java \
    WORKDIR=/home/java

# Create a user with UID and GID
RUN set -eux \
    &&if [ "${USER}" != "root" ]; then \
    addgroup --gid ${GID} ${USER}; \
    adduser --home /home/${USER} --uid ${UID} --gid ${GID} --gecos ${USER} --shell /bin/bash --disabled-password ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/* 

RUN set -eux \
    && apt-get -qqy update  \
    && apt-get -qqy install --no-install-recommends \ 
    openjdk-17-jdk=${JAVA_VERSION} \
    && echo '#!/bin/sh' | tee /etc/profile.d/java.sh \
    && echo "export JAVA_HOME=\$(readlink -f /usr/bin/javac | sed \"s:/bin/javac::\")" | tee -a /etc/profile.d/java.sh \
    && echo "export PATH=\${PATH}:\${JAVA_HOME}/bin" | tee -a /etc/profile.d/java.sh \
    && chmod +x /etc/profile.d/java.sh \
    && echo 'source /etc/profile' >> /root/.bashrc \
    && echo 'source /etc/profile' >> ${WORKDIR}/.bashrc \
    && chown ${USER}:${USER} ${WORKDIR}/.bashrc \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

# Switch to the user
USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]