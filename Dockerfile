FROM dockerfile/nodejs
MAINTAINER Alessio Biancalana <dottorblaster@archlinux.us>

## Installing dependencies ##
RUN apt-get update && apt-get install -y fontforge libbatik-java unzip
RUN npm install -g ttf2eot bower

## Install mockups-creator ##
ADD . /src
RUN cd /src; npm install; bower --allow-root install

EXPOSE 3000
CMD /src/app.js
ENTRYPOINT node
