# Docker Image Tags Reference

This document describes the Docker image tagging strategy for the OpenJDK project.

## Tag Naming Convention

All images use the format: `snowdreamtech/openjdk:TAG`

Where `TAG` follows these patterns:

- **Variant-specific tags**: `TAG-variant` (e.g., `nightly-alpine`, `21.0.12-alpine`)
- **Default tags** (Debian only): `TAG` (e.g., `nightly`, `latest`, `21.0.12`)

## Supported Registries & Aliases

All tags are pushed to two registries under both `openjdk` and `java` (compatibility alias):

- **DockerHub**:
  - Primary: `snowdreamtech/openjdk:TAG`
  - Alias: `snowdreamtech/java:TAG`
- **GitHub Container Registry**:
  - Primary: `ghcr.io/snowdreamtech/openjdk:TAG`
  - Alias: `ghcr.io/snowdreamtech/java:TAG`

## Tag Scenarios

### 1. Branch Builds (dev/main)

#### Push to `dev` branch

```bash
git push origin dev
```

**Generated tags:**

```
snowdreamtech/openjdk:dev-alpine
snowdreamtech/openjdk:dev-debian
snowdreamtech/openjdk:dev              # ← Debian (default)
snowdreamtech/openjdk:dev-rocky
```

#### Push to `main` branch

```bash
git push origin main
```

**Generated tags:**

```
snowdreamtech/openjdk:main-alpine
snowdreamtech/openjdk:latest-alpine
snowdreamtech/openjdk:main-debian
snowdreamtech/openjdk:latest-debian
snowdreamtech/openjdk:main             # ← Debian (default)
snowdreamtech/openjdk:latest           # ← Debian (default)
snowdreamtech/openjdk:main-rocky
snowdreamtech/openjdk:latest-rocky
```

---

### 2. Release Tags (Semantic Versioning)

#### Alpine Release

```bash
git tag alpine-v21.0.12
git push origin alpine-v21.0.12
```

**Generated tags:**

```
snowdreamtech/openjdk:21.0.12-alpine
snowdreamtech/openjdk:latest-alpine
```

#### Debian Release

```bash
git tag debian-v21.0.12
git push origin debian-v21.0.12
```

**Generated tags:**

```
snowdreamtech/openjdk:21.0.12-debian
snowdreamtech/openjdk:latest-debian
snowdreamtech/openjdk:21.0.12          # ← Debian (default)
snowdreamtech/openjdk:latest           # ← Debian (default)
```

#### Rocky Release

```bash
git tag rocky-v21.0.13
git push origin rocky-v21.0.13
```

**Generated tags:**

```
snowdreamtech/openjdk:21.0.13-rocky
snowdreamtech/openjdk:latest-rocky
```

---

### 3. Unified Project Release

```bash
git tag v21.0.12
git push origin v21.0.12
```

**Generated tags:**

```
snowdreamtech/openjdk:21.0.12-alpine
snowdreamtech/openjdk:latest-alpine
snowdreamtech/openjdk:21.0.12-debian
snowdreamtech/openjdk:latest-debian
snowdreamtech/openjdk:21.0.12          # ← Debian (default)
snowdreamtech/openjdk:latest           # ← Debian (default)
snowdreamtech/openjdk:21.0.12-rocky
snowdreamtech/openjdk:latest-rocky
```

---

### 4. Scheduled Builds (Nightly)

Runs every day at 17:00 UTC.

**Generated tags:**

```
snowdreamtech/openjdk:nightly-alpine
snowdreamtech/openjdk:nightly-debian
snowdreamtech/openjdk:nightly          # ← Debian (default)
snowdreamtech/openjdk:nightly-rocky
```

---

## Tag Resolution Strategy

```
                          ┌────────────────────────┐
                          │     Event Trigger      │
                          └───────────┬────────────┘
                                      │
              ┌───────────────────────┼───────────────────────┐
              ▼                       ▼                       ▼
      ┌───────────────┐       ┌───────────────┐       ┌───────────────┐
      │  Branch Push  │       │   Tag Push    │       │   Schedule    │
      └───────┬───────┘       └───────┬───────┘       └───────┬───────┘
              │                       │                       │
      ┌───────┴───────┐       ┌───────┴───────┐               ▼
      ▼               ▼       ▼               ▼       ┌───────────────┐
  ┌───────┐       ┌───────┐ ┌───┐           ┌───┐     │    nightly    │
  │  dev  │       │ main  │ │v* │           │*  │     └───────────────┘
  └───┬───┘       └───┬───┘ └──┬┘           └──┬┘
      │               │        │               │
      ▼               ▼        ▼               ▼
  ┌───────┐       ┌───────┐ ┌─────────────────────┐
  │  dev  │       │latest │ │  semver / match     │
  └───────┘       │ main  │ └─────────────────────┘
                  └───────┘
```

## Quick Reference Table

| Trigger              | Tag               | Alpine                            | Debian (Default)                                       | Rocky                           |
| -------------------- | ----------------- | --------------------------------- | ------------------------------------------------------ | ------------------------------- |
| `push: dev`          | -                 | `dev-alpine`                      | `dev`, `dev-debian`                                    | `dev-rocky`                     |
| `push: main`         | -                 | `latest-alpine`, `main-alpine`    | `latest`, `main`, `latest-debian`, `main-debian`       | `latest-rocky`, `main-rocky`    |
| `tag: alpine-vX.Y.Z` | `alpine-v21.0.12` | `21.0.12-alpine`, `latest-alpine` | -                                                      | -                               |
| `tag: debian-vX.Y.Z` | `debian-v21.0.12` | -                                 | `21.0.12`, `latest`, `21.0.12-debian`, `latest-debian` | -                               |
| `tag: rocky-vX.Y.Z`  | `rocky-v21.0.13`  | -                                 | -                                                      | `21.0.13-rocky`, `latest-rocky` |
| `tag: vX.Y.Z`        | `v21.0.12`        | `21.0.12-alpine`, `latest-alpine` | `21.0.12`, `latest`, `21.0.12-debian`, `latest-debian` | `21.0.12-rocky`, `latest-rocky` |
| `schedule`           | nightly           | `nightly-alpine`                  | `nightly`, `nightly-debian`                            | `nightly-rocky`                 |

## Image Verification

To verify images from different registries:

```bash
# DockerHub
docker pull snowdreamtech/openjdk:latest
docker pull snowdreamtech/openjdk:latest-alpine
docker pull snowdreamtech/openjdk:latest-debian
docker pull snowdreamtech/openjdk:latest-rocky

# GitHub Container Registry
docker pull ghcr.io/snowdreamtech/openjdk:latest
docker pull ghcr.io/snowdreamtech/openjdk:latest-alpine
docker pull ghcr.io/snowdreamtech/openjdk:latest-debian
docker pull ghcr.io/snowdreamtech/openjdk:latest-rocky
```
