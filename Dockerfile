FROM --platform=${TARGETPLATFORM:-linux/amd64} node:16
EXPOSE 3333
WORKDIR /app
COPY package.json .
COPY package-lock.json .

RUN npm install
COPY . .

VOLUME /app
CMD npm i && node ace migration:run && node ace serve --watch
