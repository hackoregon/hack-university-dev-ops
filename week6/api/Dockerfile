#FROM python:3.5.1-onbuild
FROM ubuntu
MAINTAINER HackOregon
COPY . /usr/src/app
WORKDIR /usr/src/app
ADD run.sh /
RUN apt-get update && apt-get install -y postgresql-client python python-setuptools python-dev libpq-dev g++
RUN easy_install pip && pip install -r requirements.txt
ENTRYPOINT [ "/run.sh" ]
