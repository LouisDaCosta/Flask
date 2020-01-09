#Image Alpine
FROM alpine:latest

#Update APK
RUN echo http://dl-cdn.alpinelinux.org/alpine/latest-stable/community >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/latest-stable/main >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN apk update

#Installation Docker
RUN apk add docker

#Lancement daemon docker
CMD service docker status

