FROM node:12-alpine
WORKDIR /app
COPY . .
RUN npm run install-dependencies
RUN npm install pm2 nodemon -g
RUN npm run build

EXPOSE 8080
CMD [ "npm", "run", "start" ]