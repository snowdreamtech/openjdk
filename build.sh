#!/bin/sh

DOCKER_HUB_PROJECT=snowdreamtech/java
DOCKER_HUB_PROJECT1=snowdreamtech/openjdk
GITHUB_PROJECT=ghcr.io/snowdreamtech/java
GITHUB_PROJECT1=ghcr.io/snowdreamtech/openjdk

docker buildx build --platform=linux/386,linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64,linux/ppc64le,linux/riscv64,linux/s390x \
    -t ${DOCKER_HUB_PROJECT}:latest \
    -t ${DOCKER_HUB_PROJECT}:11.0.24 \
    -t ${DOCKER_HUB_PROJECT}:11.0 \
    -t ${DOCKER_HUB_PROJECT}:11 \
    -t ${GITHUB_PROJECT}:latest \
    -t ${GITHUB_PROJECT}:11.0.24 \
    -t ${GITHUB_PROJECT}:11.0 \
    -t ${GITHUB_PROJECT}:11 \
    -t ${DOCKER_HUB_PROJECT1}:latest \
    -t ${DOCKER_HUB_PROJECT1}:11.0.24 \
    -t ${DOCKER_HUB_PROJECT1}:11.0 \
    -t ${DOCKER_HUB_PROJECT1}:11 \
    -t ${GITHUB_PROJECT1}:latest \
    -t ${GITHUB_PROJECT1}:11.0.24 \
    -t ${GITHUB_PROJECT1}:11.0 \
    -t ${GITHUB_PROJECT1}:11 \
    . \
    --push
