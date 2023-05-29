FROM node:lts

WORKDIR /home/node/app
USER root
ADD package.json package.json
COPY . .

RUN npm install --only=production
ADD . .
COPY server.js ./

EXPOSE 3000

CMD [ "node", "server.js" ]
