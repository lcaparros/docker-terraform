# docker-terraform
Some amazing Docker images to work with terraform Out Of The Box

[![Docker Pulls](https://img.shields.io/docker/pulls/lcaparros/terraform.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/lcaparros/terraform)

## How to push a new version of the image

```shell
$ docker build --build-arg VERSION=1.0.9 --build-arg BUILD_DATE="$(date +%Y/%m/%dT%H:%M:%S)" -t terraform .
$ docker tag terraform lcaparros/terraform:1.0.9
$ docker push lcaparros/terraform:1.0.9
```

