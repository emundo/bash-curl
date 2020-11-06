FROM alpine:latest 

RUN apk add --no-cache bash curl \
    && rm -rf /var/cache/* \
    && mkdir /var/cache/apk

RUN set -eux; \
	addgroup -g 412 -S emundo; \
	adduser -u 412 -S -D -G  emundo -H -h /home/emundo -s /bin/bash emundo; \
  mkdir -p /home/emundo; \
  chown -R emundo:emundo /home/emundo
USER emundo
WORKDIR /home/emundo
