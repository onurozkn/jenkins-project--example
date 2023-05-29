FROM node:lts
WORKDIR ./

COPY --from=backend .

COPY --from=frontend /dist ./public

EXPOSE 3000
EXPOSE 8000


CMD [ "npm", "start" ]