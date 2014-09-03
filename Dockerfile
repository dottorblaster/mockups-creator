FROM nodejs
MAINTAINER Alessio Biancalana <dottorblaster@archlinux.us>

## Installing dependencies ##
RUN apt-get update && apt-get install -y fontforge batik unzip

## Install mockups-creator ##
ADD https://github.com/julianxhokaxhiu/mockups-creator/archive/master.zip .
RUN unzip master.zip
RUN npm install
RUN bower install
