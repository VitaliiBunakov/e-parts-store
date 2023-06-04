
FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# !!!  maybe to 8080
EXPOSE 3000

CMD [ "npm", "run", "start" ]