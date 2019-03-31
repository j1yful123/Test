FROM alpine:latest

MAINTAINER Jay Shah <heydisisj@gmail.com>

RUN apk add --update python py-pip ca-certificates

RUN pip install --upgrade pip

RUN pip install httpie httpie-unixsocket && rm -rf /var/cache/apk/*

ENTRYPOINT [ "http" ]
