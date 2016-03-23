FROM node

MAINTAINER Ian Maguire <mr.scalability@gmail.com>

RUN npm cache clean -f
RUN npm install -g npm
RUN npm install -g angular
RUN npm install -g bower
RUN npm install -g http-server
RUN npm install -g protractor
COPY app /usr/src/app
EXPOSE 8080

CMD node /usr/src/app/server.js
