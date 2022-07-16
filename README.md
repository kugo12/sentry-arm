## Sentry ARM
This repo has patches to make Sentry runnable on arm64 platform, not sure if it's stable though.
All needed images are built with patches from this repo and are available on [dockerhub](https://hub.docker.com/u/kugo12)

## Running using patched sentry self-hosted
```shell
make self-hosted
cd data/self-hosted
./install.sh
```

## Mentions
- Sentry - https://github.com/getsentry
- tianon/dockerfiles - https://github.com/tianon/dockerfiles
- Sentry ARM - https://github.com/Sentry-ARM
