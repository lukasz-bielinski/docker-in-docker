FROM oberthur/docker-volumes:latest

ENV DOCKER_VERSION=1.9.1

RUN apk add --update openssl \
    && rm /var/cache/apk/* \
    && mkdir /usr/bin/_docker \
    && curl -L https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION > /usr/local/bin/docker \
    && chmod +x /usr/local/bin/docker

VOLUME /usr/local/bin
