# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the application source code into the container
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
