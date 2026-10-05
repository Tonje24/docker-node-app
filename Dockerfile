# Use the official Node.js version 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the app's dependencies listed in package.json
RUN npm install

# Copy all the remaining application files into the container
COPY . .

# Tell Docker that the app listens on port 3000
EXPOSE 3000

# Start the application with npm start
CMD ["npm", "start"]