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
RUN service docker restart

RUN docker pull rabbitmq
RUN docker run -p 5672:5672 -p 15672:15672 -d --hostname hRabbitMQ --name nRabbitMQ rabbitmq:3-management
RUN docker exec nRabbitMQ rabbitmqctl start_app
RUN docker exec nRabbitMQ rabbitmqctl start_app
RUN docker exec nRabbitMQ rabbitmq-plugins enable rabbitmq_management
RUN docker exec nRabbitMQ rabbitmqctl add_user host host
RUN docker exec nRabbitMQ rabbitmqctl set_user_tags host administrator
