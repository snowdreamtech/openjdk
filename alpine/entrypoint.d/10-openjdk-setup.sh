#!/bin/sh
set -e

# Determine JAVA_HOME based on the location of javac
JAVA_HOME="$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')"
export JAVA_HOME
export PATH="${PATH}":"${JAVA_HOME}"/bin