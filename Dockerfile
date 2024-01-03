# FROM node:16
FROM --platform=${TARGETPLATFORM:-linux/amd64,linux/arm64} node:16
EXPOSE 3333
WORKDIR /app
VOLUME /app
CMD npm i && node ace migration:run && node ace serve --watch
