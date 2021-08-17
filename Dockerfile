FROM alpine:3.12.0
MAINTAINER wiener.thomas@googlemail.com

RUN apk add --no-cache bash
RUN wget https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz \
    && tar xf kubeval-linux-amd64.tar.gz \
    && cp kubeval /usr/local/bin

COPY kubeval-lqt /usr/local/bin