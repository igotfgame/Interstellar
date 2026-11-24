FROM node:bookworm-slim

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=8080
ENV HOST=0.0.0.0

# Copy all project files, including vendor dependencies
COPY . .

# Install dependencies after copying vendor files
RUN npm install --omit=dev

# EthioDeploy application port
EXPOSE 8080

# Start Interstellar
CMD ["npm", "start"]"]
