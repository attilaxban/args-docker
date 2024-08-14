FROM node:22-alpine3.19

ENV PARAM=''

WORKDIR /app

COPY package.json .

RUN yarn install --production && npm install

COPY . .
ARG NAME="default"
ENV NAME=${NAME}

CMD [ "node", "script.js" ]

