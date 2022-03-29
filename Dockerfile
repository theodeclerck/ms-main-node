FROM node:10-alpine

WORKDIR /usr/src/app/

COPY ./package.json /usr/src/app/package.json

RUN npm install

COPY ./ ./

EXPOSE 8081

ENTRYPOINT ["npm", "run", "development"]
