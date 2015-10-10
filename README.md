# Basic ArchLinux container to build binary packages

This container has `sudo` and configures default user `builder` (passwordless
sudo).

## How to update

This image inherits from `crossdev/archlinux`. Its up-to-date version is available
from the [default](https://hub.docker.com) Docker registry. Simply run:

``` shell
$ cd package-builder
$ docker build -t crossdev/package-builder .
$ docker login
$ docker push crossdev/package-builder
```

This image is configured as an automated build, so, generally, you just assume
it exists and need not be built.

## How to use

It is meant for [drone CI](https://github.com/drone/drone), so use
`crossdev/package-builder` as a base image in your `.drone.yml`.
