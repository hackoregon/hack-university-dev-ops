FROM ubuntu
MAINTAINER HackOregon
COPY . /usr/src/app
RUN apt-get update && apt-get install -y build-essential nodejs nodejs-legacy npm
RUN cd /usr/src/app && npm install && npm rebuild node-sass && npm run build && npm run build-css 
ADD run.sh /
WORKDIR /usr/src/app
ENTRYPOINT [ "/run.sh" ]
