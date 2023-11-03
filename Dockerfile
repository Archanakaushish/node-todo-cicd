FROM node:12.2.0-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8000
CMD ["node","app.js"]
