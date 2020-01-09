#Image Docker
FROM alpine:3.2

CMD echo http://dl-1.alpinelinux.org/alpine/v3.2/main >> /etc/apk/repositories
CMD echo http://dl-2.alpinelinux.org/alpine/v3.2/main >> /etc/apk/repositories
CMD echo http://dl-3.alpinelinux.org/alpine/v3.2/main >> /etc/apk/repositories
CMD echohttp://dl-4.alpinelinux.org/alpine/v3.2/main >> /etc/apk/repositories
CMD echohttp://dl-5.alpinelinux.org/alpine/v3.2/main>> /etc/apk/repositories

RUN apk update

#Installation python3/pip3
RUN apk add python3
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3


