FROM node:18-alpine

WORKDIR /home/node

COPY src ./src
COPY package.json package-lock.json tsconfig.json ./

RUN npm i --omit=dev

EXPOSE 3000
CMD npm start
