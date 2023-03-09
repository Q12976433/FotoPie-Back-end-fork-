FROM node:18-alpine
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

COPY . .
RUN npm install -g npm@9.6.1
CMD ["node", "src/index.js"]
EXPOSE 3000