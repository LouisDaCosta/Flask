#Image Ubuntu
FROM ubuntu:latest


#Update
RUN apt-get update
RUN apt-get upgrade

#Python3
RUN apt-get install python3 -y apt-transport-https
RUN apt-get install python3-pip -y apt-transport-https



