FROM oberthur/docker-volumes:latest

ENV DOCKER_VERSION=1.8.2

RUN wget -O /usr/bin/docker "https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION" \
    && chmod +x /usr/bin/docker
