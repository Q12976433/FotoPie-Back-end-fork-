# syntax=docker/dockerfile:1

FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install --production
RUN npm install

RUN npm install -g @nestjs/cli

COPY . .

RUN npm run build

CMD [ "node", "dist/main.js" ]
