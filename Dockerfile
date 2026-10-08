FROM node:20-alpine

WORKDIR /app

RUN npm init -y

RUN npm install redis

COPY app.js .
COPY index.html .

EXPOSE 3000

CMD ["node", "app.js"]
