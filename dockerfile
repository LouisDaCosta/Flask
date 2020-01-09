#Image Ubuntu
FROM ubuntu:latest

#Update
RUN apt-get update
RUN apt-get upgrade

#Python3
RUN apt install python3
RUN apt install python3-pip



