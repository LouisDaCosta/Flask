#Image Alpine
FROM alpine:3.10

#Update APK
RUN echo http://mirrors.ircam.fr/pub/alpine/v3.10/main >> /etc/apk/repositories
RUN echo http://mirrors.ircam.fr/pub/alpine/v3.10/community >> /etc/apk/repositories
RUN echo http://mirrors.ircam.fr/pub/alpine/edge/main >> /etc/apk/repositories
RUN echo http://mirrors.ircam.fr/pub/alpine/edge/community >> /etc/apk/repositories
RUN echo http://mirrors.ircam.fr/pub/alpine/edge/testing >> /etc/apk/repositories

RUN apk update

#Installation Docker
RUN apk add docker

#Lancement daemon docker
RUN service docker start

RUN docker pull rabbitmq
RUN docker run -p 5672:5672 -p 15672:15672 -d --hostname hRabbitMQ --name nRabbitMQ rabbitmq:3-management
RUN docker exec nRabbitMQ rabbitmqctl start_app
RUN docker exec nRabbitMQ rabbitmqctl start_app
RUN docker exec nRabbitMQ rabbitmq-plugins enable rabbitmq_management
RUN docker exec nRabbitMQ rabbitmqctl add_user host host
RUN docker exec nRabbitMQ rabbitmqctl set_user_tags host administrator
