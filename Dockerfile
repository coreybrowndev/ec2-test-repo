FROM node:16
EXPOSE 3333
WORKDIR /app
VOLUME /app
# COPY . /app
CMD npm i && node ace migration:run && node ace serve --watch