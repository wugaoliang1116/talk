#FROM node:latest
FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package.json .
COPY postinstall.js .
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
