# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of your app's code into the container
COPY . .

# Expose port 3000 (or your app's port)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
