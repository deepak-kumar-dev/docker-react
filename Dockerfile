# Use an official Node.js runtime with Alpine Linux as a base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

# Build the app
RUN npm run build

# Expose port 80
EXPOSE 80

# Command to run your app
CMD [ "npm", "start" ]
