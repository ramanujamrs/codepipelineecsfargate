FROM public.ecr.aws/docker/library/node:slim

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
