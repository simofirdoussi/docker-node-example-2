FROM node

WORKDIR /app

COPY package.json .

RUN npm install package.json

COPY . /app

CMD ["npm", "start"]
