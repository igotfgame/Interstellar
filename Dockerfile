FROM node:22.23.4-bookworm-slim

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=8080
ENV HOST=0.0.0.0

COPY . .

RUN corepack enable && pnpm install --frozen-lockfile

EXPOSE 8080

CMD ["pnpm", "start"]
