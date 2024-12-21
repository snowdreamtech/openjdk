FROM snowdreamtech/alpine:3.21.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="OpenJDK Image Based On Alpine" \
    org.opencontainers.image.description="Docker Images for OpenJDK on Alpine. (i386, amd64, arm32v6, arm32v7, arm64, ppc64le,riscv64, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/openjdk" \
    org.opencontainers.image.base.name="snowdreamtech/openjdk:alpine" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/openjdk" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="21.0.5" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/openjdk"

ENV JAVA_VERSION=21.0.5_p11-r0

ARG GID=1000 \
    UID=1000  \
    USER=java \
    WORKDIR=/home/java

# Create a user with UID and GID
RUN if [ "${USER}" != "root" ]; then \
    addgroup -g ${GID} ${USER}; \
    adduser -h /home/${USER} -u ${UID} -g ${USER} -G ${USER} -s /bin/sh -D ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi

RUN apk add --no-cache \
    openjdk21=${JAVA_VERSION} \
    && echo '#!/bin/sh' | tee /etc/profile.d/java.sh \
    && echo "export JAVA_HOME=\$(readlink -f /usr/bin/javac | sed \"s:/bin/javac::\")" | tee -a /etc/profile.d/java.sh \
    && echo "export PATH=\${PATH}:\${JAVA_HOME}/bin" | tee -a /etc/profile.d/java.sh \
    && chmod +x /etc/profile.d/java.sh \
    && echo 'source /etc/profile' >> /root/.ashrc \
    && echo 'source /etc/profile' >> ${WORKDIR}/.ashrc \
    && chown ${USER}:${USER} ${WORKDIR}/.ashrc 

# Switch to the user
USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]