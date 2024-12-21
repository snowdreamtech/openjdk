#!/bin/sh
set -e

# ENV
JAVA_HOME="$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')"
export JAVA_HOME
export PATH="${PATH}":"${JAVA_HOME}"/bin

# exec commands
if [ -n "$*" ]; then
    sh -c "$*"
fi

# keep the docker container running
# https://github.com/docker/compose/issues/1926#issuecomment-422351028
if [ "${KEEPALIVE}" -eq 1 ]; then
    trap : TERM INT
    tail -f /dev/null & wait
    # sleep infinity & wait
fi