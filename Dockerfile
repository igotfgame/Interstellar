FROM node:bookworm-slim

WORKDIR /app

COPY . .

RUN npm install

ENV NODE_ENV=production

EXPOSE 8080

CMD ["npm", "start"]
