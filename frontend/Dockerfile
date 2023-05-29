FROM node:lts
WORKDIR /var/jenkins_home/workspace/jenkins-project-example_main@tmp
USER root
COPY package*.json ./


RUN npm install

COPY . .


RUN npm run build

EXPOSE 8000

CMD [ "npm", "start" ]
