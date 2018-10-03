FROM golang:alpine

ENV GO111MODULE on

RUN set -ex; \
    apk add --no-cache git gcc musl-dev

WORKDIR /go/src/app
ONBUILD COPY . .
ONBUILD RUN go mod vendor
ONBUILD RUN go install -v ./...
ENTRYPOINT [ "app" ]