# docker-su-exec

[![](https://images.microbadger.com/badges/image/bskim45/helm-kubectl-jq.svg)](https://microbadger.com/images/bskim45/su-exec "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/bskim45/su-exec.svg)](https://microbadger.com/images/bskim45/su-exec "Get your own version badge on microbadger.com")
[![Docker Stars](https://img.shields.io/docker/stars/bskim45/su-exec.svg?style=flat)](https://hub.docker.com/r/bskim45/su-exec/)
[![Docker Pulls](https://img.shields.io/docker/pulls/bskim45/su-exec.svg)]()

Super simple Docker image bundled with [su-exec](https://github.com/ncopa/su-exec) based on Alpine Linux

## Supported Tags

* `0.2-alpine3.11`, `0.2-alpine`, `0.2`, `latest` - su-exec 0.2, alpine 3.11

## Usage

```shell
docker run -it --rm -v $(pwd):/app -e LOCAL_USER_ID=9001 bskim45/su-exec <command>
```

ex.

```shell
docker run -it --rm bskim45/su-exec:latest id
Starting with UID : 9001
uid=9001(user) gid=9001(user) groups=9001(user)
```
