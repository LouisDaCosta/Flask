FROM alpine:latest

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask


