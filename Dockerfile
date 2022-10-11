FROM node

WORKDIR /app

COPY package.json .

RUN npm install package.json

COPY . .

CMD ["npm", "start"]
