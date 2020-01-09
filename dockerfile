FROM python:3-alpine

RUN python -m pip install --upgrade pip

RUN pip install Flask

#installation module
RUN apk add git

#Creation dir
RUN mkdir /app

#Repertoire courant
WORKDIR /app
 
