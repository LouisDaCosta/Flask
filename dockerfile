#Image Docker
FROM alpine:3.10

RUN echo http://mirrors.ircam.fr/pub/alpine/v3.10/community >> /etc/apk/repositories
RUN echo http://mirrors.ircam.fr/pub/alpine/v3.10/main >> /etc/apk/repositories

RUN apk update

#Installation python3/pip3
RUN apk add python3



