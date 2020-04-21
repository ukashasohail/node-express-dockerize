FROM alpine

LABEL maintainer="ukasha"

RUN apk add --update nodejs nodejs-npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "node", "./server.js" ]