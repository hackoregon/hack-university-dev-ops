############################################################
# Dockerfile to build Python WSGI Application Containers
# Based on Ubuntu
############################################################

FROM ubuntu
MAINTAINER Gareth Ferneyhough

# Update the sources list
# Install basic applications
# Install system dependencies
# Install Python and Basic Python Tools 
RUN apt-get update && apt-get install -y tar git curl nano wget dialog net-tools build-essential \
    libpq-dev \
    python3 python3-dev python3-pip

ADD jobs-economy /jobs-economy
ADD setup /setup
RUN pip3 install -r /setup/requirements.txt -r /setup/server-requirements.txt
EXPOSE 8080
WORKDIR /jobs-economy
CMD gunicorn app:app -w2 -b :8080 --reload
