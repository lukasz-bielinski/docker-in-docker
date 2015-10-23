FROM oberthur/docker-volumes:latest

ENV DOCKER_VERSION=1.8.2

RUN apk add --update openssl \
    && rm /var/cache/apk/* \
    && curl -L https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION > /usr/bin/docker \
    && chmod +x /usr/bin/docker

VOLUME ["/usr/bin/docker"]
