#Image Alpine
FROM alpine:3.11

#Installation Docker
RUN apt install docker docker.io

#Creation Repertoire
RUN mkdir /app

#Repertoire courant
WORKDIR /app

#Mise en place de RabbitMQ
RUN docker pull rabbitmq
RUN docker run -p 5672:5672 -p 15672:15672 -d --hostname hRabbitMQ --name nRabbitMQ rabbitmq:3-management
RUN docker exec nRabbitMQ rabbitmqctl start_app
RUN docker exec nRabbitMQ rabbitmq-plugins enable rabbitmq_management
RUN docker exec nRabbitMQ rabbitmqctl add_user host host
RUN docker exec nRabbitMQ rabbitmqctl set_user_tags host administrator
