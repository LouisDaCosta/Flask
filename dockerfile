#Image Alpine
FROM ubuntu:latest

#Update
RUN apt-get update
RUN  apt-get upgrade

#Creation dir
#########RUN mkdir /app

#Repertoire courant
########WORKDIR /app

#Installation Erlang
#######CMD wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~ubuntu~xenial_amd64.deb
######sudo dpkg -i esl-erlang_20.1-1\~ubuntu\~xenial_amd64.deb
#########CMD echo "deb https://dl.bintray.com/rabbitmq/debian xenial main" | sudo tee /etc/apt/sources.list.d/bintray.rabbitmq.list
###CMD wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

#Update
##RUN sudo apt-get update

#Installation RabbitMQ
#sudo apt-get install rabbitmq-server
