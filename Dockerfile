# Use the base image for Node.js
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on
EXPOSE 8080  # Replace with your actual port

# Define the command to run your application
CMD ["npm", "start"]
