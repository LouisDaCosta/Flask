FROM python:3-alpine

RUN python -m pip install --upgrade pip

RUN pip install Flask

RUN pip install pika

RUN pip install -r requirements.txt

RUN pip install requests

RUN apk add git

RUN mkdir /app

WORKDIR /app

RUN git clone https://github.com/LouisDaCosta/FlaskFunction .


