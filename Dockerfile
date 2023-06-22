FROM node:16-alpine3.13

RUN addgroup app && addUser -S -G app app
USER app

WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .

EXPOSE 6001