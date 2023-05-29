FROM node:lts
WORKDIR /var/jenkins_home/workspace/
USER root
COPY package*.json ./


RUN npm install

COPY . .


RUN npm run build

EXPOSE 8000

CMD [ "npm", "start" ]
