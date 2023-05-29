FROM node:lts
WORKDIR /home/node/app

COPY package*.json ./


RUN npm install

COPY . .


RUN npm run build

EXPOSE 8000

CMD [ "npm", "start" ]
