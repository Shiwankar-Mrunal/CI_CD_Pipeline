# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /web-app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY web-app/ .

# Expose the port the app will run on
EXPOSE 8000

# Command to run the app
CMD ["node", "web-app/app.js"]










































































# Use an official Node.js runtime as the base image
#FROM node:14

# Set the working directory inside the container
#WORKDIR /web-app

# Copy package.json and package-lock.json (if available) from the root
#COPY package*.json ./

# Install dependencies
#RUN npm install

# Copy the rest of the application from the 'web-app' folder
#COPY web-app/ .

# Expose the port the app will run on
#EXPOSE 8000

# Command to run the app
#CMD ["node", "app.js"]

