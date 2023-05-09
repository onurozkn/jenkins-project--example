FROM node:lts
WORKDIR /app

COPY --from=backend /app .

COPY --from=frontend /app/dist ./public

EXPOSE 3000
EXPOSE 8000


CMD [ "npm", "start" ]
