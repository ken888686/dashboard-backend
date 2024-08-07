FROM node:lts

WORKDIR /usr/src/app

COPY package*.json  ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000/tcp

CMD [ "node", "dist/main.js" ]
