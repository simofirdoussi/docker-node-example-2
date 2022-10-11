FROM node

WORKDIR /app

COPY package.json .

RUN npm install package.json

COPY . .

ENV PORT 80

EXPOSE $PORT

CMD ["npm", "start"]
