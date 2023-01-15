FROM node:lts-alpine3.17

WORKDIR /app

COPY . /app

RUN npm cache verify

RUN npm install

RUN npm i -g @nrwl/cli

EXPOSE 4200

CMD npx nx serve angular-app-test --verbose --host=0.0.0.0


