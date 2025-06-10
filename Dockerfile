# Use the official Node.js base image
FROM node:20-alpine

# Set working directory in the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app's code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start your app
CMD ["node", "server.js"]
