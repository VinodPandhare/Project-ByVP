# Use the official Node.js 14-alpine image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the application port (8080)
EXPOSE 8080

# Command to run the application
CMD ["node", "app.js"]
