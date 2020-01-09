FROM alpine:latest

RUN apk add python3
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3

# Install app dependencies
RUN pip install Flask


