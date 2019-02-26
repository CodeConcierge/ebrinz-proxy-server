FROM node:latest

RUN mkdir -p /public/app

WORKDIR /public/app

COPY package*.json ./

COPY . /public/app

RUN npm install

RUN npm i -g nodemon

EXPOSE 3000

CMD [ "npm", "start" ]