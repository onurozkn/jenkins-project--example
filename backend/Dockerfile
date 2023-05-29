FROM node:lts

WORKDIR /var/jenkins_home/workspace/jenkins-project-example_main@tmp
USER root
ADD package.json package.json
COPY . .

RUN npm install --only=production
ADD . .
COPY server.js ./

EXPOSE 3000

CMD [ "node", "server.js" ]
