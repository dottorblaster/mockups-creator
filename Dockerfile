FROM dockerfile/nodejs
MAINTAINER Alessio Biancalana <dottorblaster@archlinux.us>

## Installing dependencies ##
RUN apt-get update && apt-get install -y fontforge batik unzip
RUN npm install -g ttf2eot

## Install mockups-creator ##
COPY . /src
RUN cd /src; npm install; bower install

EXPOSE 3000
CMD ["node", "/src/app.js"]
