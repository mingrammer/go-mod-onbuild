# Go + mod onbuild

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE) [![Docker Build Status](https://img.shields.io/docker/build/mingrammer/go-mod-onbuild.svg)](https://hub.docker.com/r/mingrammer/go-mod-onbuild) [![Docker Pulls](https://img.shields.io/docker/pulls/mingrammer/go-mod-onbuild.svg)](https://hub.docker.com/r/mingrammer/go-mod-onbuild)

> Similar to [go-dep-onbuild](https://github.com/cometkim/go-dep-onbuild/blob) except it uses Go module, not dep.

Go + module onbuild docker image. 

## Usage

```console
echo "FROM mingrammer/go-mod-onbuild" > Dockerfile
docker build -t [IMAGE_NAME] .
```
