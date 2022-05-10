FROM public.ecr.aws/docker/library/node:18.1.0-slim

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
