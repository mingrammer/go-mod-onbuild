FROM golang:alpine

ENV GO111MODULE on

RUN set -ex; \
    apk add --no-cache git gcc musl-dev

WORKDIR /home/app
ONBUILD COPY . .
ONBUILD RUN go mod vendor
ONBUILD RUN go build -o app
CMD ["./app"]