FROM node:lts
WORKDIR ./
WORKDIR /home/node/app

COPY backend/ .
COPY frontend/ .

EXPOSE 3000
EXPOSE 8000
CMD [ "npm", "start" ]