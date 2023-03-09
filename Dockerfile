FROM node:18-alpine
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

COPY . .
RUN npm install  --only=dev
CMD ["node", "src/index.js"]
EXPOSE 3000