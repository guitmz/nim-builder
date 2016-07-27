FROM alpine:latest 
MAINTAINER guitmz <thomazi@linux.com>

ENV NIM_VERSION 0.14.2

RUN apk add --no-cache g++ curl tar xz
RUN mkdir -p /tmp/nim && \
	curl -sL "http://nim-lang.org/download/nim-$NIM_VERSION.tar.xz" | tar xJ --strip-components=1 -C /tmp/nim && \
	cd /tmp/nim && chmod +x build.sh install.sh && \
	./build.sh && \
	./install.sh /usr/bin && \
	rm -rf /tmp/nim
