# Use the official Node.js 14 image as the base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build


# Expose port 80 to the outside world
EXPOSE 3000

# Start nginx when the container starts
CMD ["npm", "start"]
