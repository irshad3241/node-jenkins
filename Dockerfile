# Use Node.js LTS Alpine as base image
FROM node:20-alpine

# Set working directory inside container
WORKDIR /app

# Copy the rest of the app
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]