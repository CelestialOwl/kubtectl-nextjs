# syntax=docker.io/docker/dockerfile:1
FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
expose 3000
CMD ["npm", "start"]