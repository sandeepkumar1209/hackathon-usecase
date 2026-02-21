FROM node:18-alpine

WORKDIR /app

# Copy package.json
COPY package.json .

# Install dependencies
RUN npm install --production

# Copy app code
COPY index.js .

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app
USER appuser

EXPOSE 3001

CMD ["node", "index.js"]
