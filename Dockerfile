FROM golang:alpine

ENV GO111MODULE on

RUN set -ex; \
    apk add --no-cache git gcc musl-dev

WORKDIR /home/app
ONBUILD COPY . .
ONBUILD RUN go build -o /bin/app
ENTRYPOINT ["app"]
