# this Dockerfile creates a unix image, installs python and pip install requirements. CMD is shell script to complete the task

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y  apt-transport-https ca-certificates

RUN apt-get update && apt-get install -y python3.8 python3-pip

COPY . /plotlydash-flask-tutorial
WORKDIR /plotlydash-flask-tutorial
RUN pip3 install -r requirements.txt

CMD ["sh","start.sh"]