FROM node:10-buster-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app/
RUN npm ci && npm cache clean --force
COPY . /usr/src/app

CMD [ "npm", "start" ]
