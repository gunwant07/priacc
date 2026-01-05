# Stage 1: Build the app
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies inside container
COPY package*.json ./
RUN npm ci

# Copy source code (excluding node_modules)
COPY . .

# Ensure vite is executable
RUN chmod +x node_modules/.bin/vite

# Build the app
RUN npm run build

# Stage 2: Serve with nginx
FROM nginx:alpine

# Copy built files to nginx public directory
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
