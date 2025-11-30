# Build stage
FROM node:20-alpine AS build-stage

# Set working directory
WORKDIR /app

# Add non-root user for better security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Install dependencies with exact versions and clean cache
COPY package*.json ./
RUN npm ci && \
    npm cache clean --force

# Copy project files
COPY . .
RUN mv .env.production .env

# Build the application
RUN npm run build

# Production stage with Nginx
FROM nginx:stable-alpine AS production-stage

# Add non-root user
RUN addgroup -S nginxgroup && adduser -S nginxuser -G nginxgroup

# Install security updates and tools
RUN apk update && \
    apk upgrade && \
    apk add --no-cache curl bash && \
    rm -rf /var/cache/apk/*

# Copy custom nginx configuration
COPY --chown=nginxuser:nginxgroup nginx.conf /etc/nginx/conf.d/default.conf

# Copy built files from build stage
COPY --from=build-stage --chown=nginxuser:nginxgroup /app/dist /usr/share/nginx/html

# Set proper permissions
RUN chown -R nginxuser:nginxgroup /usr/share/nginx/html && \
    chown -R nginxuser:nginxgroup /var/cache/nginx && \
    chown -R nginxuser:nginxgroup /var/log/nginx && \
    touch /var/run/nginx.pid && \
    chown -R nginxuser:nginxgroup /var/run/nginx.pid

# Switch to non-root user
USER nginxuser

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
