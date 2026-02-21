# Use lightweight Node image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json .

# Install production dependencies
RUN npm install --production

# Copy application code
COPY index.js .

# Create non-root user for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app
USER appuser

# Expose service port
EXPOSE 3000

# Start application
CMD ["node", "index.js"]
