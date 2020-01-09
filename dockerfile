FROM debian:latest

RUN echo "deb http://cloudfront.debian.net/debian stretch main\n \
  deb http://cloudfront.debian.net/debian stretch-updates main\n \
  deb http://cloudfront.debian.net/debian-security stretch/updates main" > /etc/apt/sources.list
  
RUN apt-get clean && apt-get update
RUN apt-get install -y --no-install-recommends python3 python3-virtualenv

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt


