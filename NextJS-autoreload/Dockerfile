# Use an official Node.js runtime as the base image
FROM node:alpine

# Set the working directory in the container
RUN mkdir -p /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json /app/

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . /app

# Expose the port that Next.js runs on
EXPOSE 3000

# Start the Next.js development server with hot-reloading
CMD ["npm", "run", "dev"]
