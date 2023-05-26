FROM node:lts
WORKDIR ./

COPY backend/ .
COPY frontend/dist ./public


EXPOSE 3000
EXPOSE 8000


CMD [ "npm", "start" ]
