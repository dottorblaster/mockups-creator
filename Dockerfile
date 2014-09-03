FROM nodejs
MAINTAINER Alessio Biancalana <dottorblaster@archlinux.us>

RUN apt-get update && apt-get install -y fontforge batik unzip

## Install NodeJS from the official repository ##
FROM nodejs
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN sudo apt-get install -y nodejs

## Install mockups-creator ##
ADD https://github.com/julianxhokaxhiu/mockups-creator/archive/master.zip .
RUN unzip master.zip
RUN npm install
RUN bower install
