# Use an official Node.js runtime as the base image
FROM node:20.16.0-bullseye-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port (replace 3000 with the port your application listens on)
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]