# Dockerfile for sample Node.js app – Task 7
# Build: docker build -t devops-assessment-app:latest .
# Run:   docker run -p 3000:3000 -e PORT=3000 devops-assessment-app:latest

FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000

COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./
COPY src ./src

EXPOSE 3000

USER node

CMD ["node", "src/index.js"]
