#!/bin/sh

DOCKER_HUB_PROJECT=snowdreamtech/java
DOCKER_HUB_PROJECT1=snowdreamtech/openjdk
GITHUB_PROJECT=ghcr.io/snowdreamtech/java
GITHUB_PROJECT1=ghcr.io/snowdreamtech/openjdk

docker buildx build --platform=linux/amd64,linux/arm64,linux/ppc64le,linux/s390x \
    -t ${DOCKER_HUB_PROJECT}:latest \
    -t ${DOCKER_HUB_PROJECT}:17.0.12 \
    -t ${DOCKER_HUB_PROJECT}:17.0 \
    -t ${DOCKER_HUB_PROJECT}:17 \
    -t ${GITHUB_PROJECT}:latest \
    -t ${GITHUB_PROJECT}:17.0.12 \
    -t ${GITHUB_PROJECT}:17.0 \
    -t ${GITHUB_PROJECT}:17 \
    -t ${DOCKER_HUB_PROJECT1}:latest \
    -t ${DOCKER_HUB_PROJECT1}:17.0.12 \
    -t ${DOCKER_HUB_PROJECT1}:17.0 \
    -t ${DOCKER_HUB_PROJECT1}:17 \
    -t ${GITHUB_PROJECT1}:latest \
    -t ${GITHUB_PROJECT1}:17.0.12 \
    -t ${GITHUB_PROJECT1}:17.0 \
    -t ${GITHUB_PROJECT1}:17 \
    . \
    --push
