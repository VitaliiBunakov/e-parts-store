# 

FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY ./src .

# !!!  maybe to 8080
EXPOSE 8080:3000

CMD [ "node", "server.js" ]