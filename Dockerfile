FROM node:lts
WORKDIR ./

COPY backend/ .
COPY frontend/ .

EXPOSE 3000
EXPOSE 8000
CMD [ "npm", "start" ]