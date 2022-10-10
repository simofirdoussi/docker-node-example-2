FROM node

WORKDIR /app

COPY . /app

RUN npm install package.json

CMD ["server", "server.js"]
