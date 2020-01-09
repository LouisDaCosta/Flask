#Image Alpine
FROM ubuntu:latest

#Update
RUN apt-get update
RUN  apt-get upgrade

#Creation dir
RUN mkdir /app

#Repertoire courant
WORKDIR /app

#Installation Erlang
RUN wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~ubuntu~xenial_amd64.deb
RUN dpkg -i esl-erlang_20.1-1\~ubuntu\~xenial_amd64.deb
RUN echo "deb https://dl.bintray.com/rabbitmq/debian xenial main" | tee /etc/apt/sources.list.d/bintray.rabbitmq.list
RUN wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | apt-key add -

#Update
RUN apt-get update

#Installation RabbitMQ
RUN apt-get install rabbitmq-server

#Start RabbitMQ
RUN systemctl start rabbitmq-server.service
RUN systemctl enable rabbitmq-server.service
RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmqctl add_user host host
RUN rabbitmqctl set_user_tags host administrator

#Test
CMD echo test
