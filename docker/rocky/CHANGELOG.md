# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [21.0.13](https://github.com/snowdreamtech/openjdk/compare/rocky-v21.0.13...rocky-v21.0.13) (2026-10-30)


### 🚀 Features

* align with base dev template and retain openjdk docker configs ([5b2a426](https://github.com/snowdreamtech/openjdk/commit/5b2a4263f8020c9c320d2ba43785295b90cb0742))
* initial release of snowdreamtech base docker images powered by unirtm ([25f55c8](https://github.com/snowdreamtech/openjdk/commit/25f55c84e8fba977d226739e9871d61e1428fdeb))


### ♻️ Miscellaneous Chores

* release main ([a2cafdc](https://github.com/snowdreamtech/openjdk/commit/a2cafdc012ed85559e0239e6333af767a878eff8))
* **release:** deduplicate CHANGELOG headers ([ec1c2ef](https://github.com/snowdreamtech/openjdk/commit/ec1c2ef80d3e6af152487494cd1727eaf502214b))

## [21.0.12](https://github.com/snowdreamtech/openjdk/compare/rocky-v21.0.11...rocky-v21.0.12) (2026-08-12)

### 🐛 Bug Fixes

- remove static version defaults from OCI image labels to use variable injection exclusively ([da5645a](https://github.com/snowdreamtech/openjdk/commit/da5645ad4d48467290235abbbd9f31ba70bf690f))
- use ghcr.io for base images to avoid rate limits ([9f1d73a](https://github.com/snowdreamtech/openjdk/commit/9f1d73a75a61f2f368f5572c4bd28f4c92ef8fd5))

### ♻️ Miscellaneous Chores

- add 0-git-keep.sh to prevent empty entrypoint.d directories ([ce77247](https://github.com/snowdreamtech/openjdk/commit/ce77247762becc1edf85ec7b57747d3f3127044a))
- **merge:** merge upstream/dev into dev ([3900312](https://github.com/snowdreamtech/openjdk/commit/39003128333c7ea5a4d0653e47a88ae0c6071f05))
- release main ([5a92edb](https://github.com/snowdreamtech/openjdk/commit/5a92edb4ba76b04ee6de7369e9471f785849a7ae))
- release main ([4011a21](https://github.com/snowdreamtech/openjdk/commit/4011a21a23395acc9545168c95ca0ec5c867e7d3))
- release main ([d52be5c](https://github.com/snowdreamtech/openjdk/commit/d52be5cf0c5cff45f7f72e973d62c94b48855e1b))
- release main ([f66597a](https://github.com/snowdreamtech/openjdk/commit/f66597a5feae95e8853f4cc730c81e93e172f6ca))
- release main ([b3a5cc9](https://github.com/snowdreamtech/openjdk/commit/b3a5cc9ef0a64a7bc04ed7c2acf0cca5327c5c26))
- release main ([2cf6401](https://github.com/snowdreamtech/openjdk/commit/2cf6401e0a2e052ebf81aa6e2b17d09a4714197d))
- **release:** deduplicate CHANGELOG headers ([c2bba24](https://github.com/snowdreamtech/openjdk/commit/c2bba247dca89a31accc6e70c5e48b16170b1ce5))
- **release:** deduplicate CHANGELOG headers ([4f07b71](https://github.com/snowdreamtech/openjdk/commit/4f07b71194f58ba214f1fb60ce0dc56d71c499e2))
- **release:** deduplicate CHANGELOG headers ([82be3d5](https://github.com/snowdreamtech/openjdk/commit/82be3d5576b65b7f69b1a9afb8604f2c8f0e47f7))
- update rocky base image to 10.2.0 ([753063f](https://github.com/snowdreamtech/openjdk/commit/753063f350c2f2187f4cbca7733479632eb51829))

## [21.0.11](https://github.com/snowdreamtech/openjdk/compare/rocky-v21.0.11...rocky-v21.0.11) (2026-06-20)

### 🛠 Refactoring

- **docker:** align Dockerfiles with base image structure ([232574f](https://github.com/snowdreamtech/openjdk/commit/232574fed8418f8c7f257d001e951361dfa467a0))
- remove redundant docker-entrypoint.sh files ([87c576b](https://github.com/snowdreamtech/openjdk/commit/87c576b27731ad11c5bc0ebc661e07c5a09ff1c1))
- reorganize distribution variants into docker directory ([67a8c91](https://github.com/snowdreamtech/openjdk/commit/67a8c911e21801bf12b3e83d02e22f3b3f59a2ba))

### 📖 Documentation

- add detailed comments to entrypoint initialization scripts ([f42cbaa](https://github.com/snowdreamtech/openjdk/commit/f42cbaab6edfbc5c38c2a636dfd8651fea900940))
- update documentation and reset changelogs for openjdk migration ([0726a94](https://github.com/snowdreamtech/openjdk/commit/0726a94d0649c98e97ce357ee717d4ead5c08c5c))

### ♻️ Miscellaneous Chores

- **deps:** bump base images to alpine 3.24.0, debian 13.5.0, rocky 10.2.0 ([1688969](https://github.com/snowdreamtech/openjdk/commit/168896956d2f4c7f91309c4c98ffef36ca7e8546))
- release main ([78328d2](https://github.com/snowdreamtech/openjdk/commit/78328d20bd3697d48ea90aee8d0eaa6af4ccc09c))
- release main ([b720ad5](https://github.com/snowdreamtech/openjdk/commit/b720ad57dd1691d8ae07dcac7d46d0bd257af3a0))
- release main ([32dd84d](https://github.com/snowdreamtech/openjdk/commit/32dd84de4be973395d0867b5d527d528948a35df))
- release main ([725c69f](https://github.com/snowdreamtech/openjdk/commit/725c69fdcc222b5b83d0690629ce213a68c586ab))
- release main ([070b694](https://github.com/snowdreamtech/openjdk/commit/070b694a702763b60fc6b057a81418320418cafa))
