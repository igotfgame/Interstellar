FROM node:bookworm-slim

WORKDIR /app

# Copy the entire project, including vendor dependencies
COPY . .

# Install dependencies after copying the project
RUN npm install

ENV NODE_ENV=production

EXPOSE 8080

CMD ["npm", "start"]
