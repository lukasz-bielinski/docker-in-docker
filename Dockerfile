FROM oberthur/docker-volumes:latest

ENV DOCKER_VERSION=1.7.1

RUN apk add --update openssl \
    && rm /var/cache/apk/* \
    && mkdir /usr/bin/_docker \
    && curl -L https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION > /usr/bin/_docker/docker \
    && chmod +x /usr/bin/_docker/docker

VOLUME /usr/bin/_docker
