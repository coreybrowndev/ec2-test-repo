FROM node:16
EXPOSE 3333
WORKDIR /app
COPY . .
VOLUME /app
CMD npm i && node ace migration:run && node ace serve --watch