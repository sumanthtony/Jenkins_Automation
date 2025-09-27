# Stage 1: Build
FROM node:18 AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code
COPY . .

# Optional: Run tests here if needed
# RUN npm test

# Stage 2: Runtime (lightweight)
FROM node:18-alpine AS runtime

WORKDIR /app

# Copy only necessary files from builder
COPY --from=builder /app .

# Expose port and start app
EXPOSE 3000
CMD ["node", "index.js"]
