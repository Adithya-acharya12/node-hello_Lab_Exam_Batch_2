# Use official Node.js image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on (usually 3000 for Node.js apps)
EXPOSE 3000

# Define the command to run the app (adjust according to your app's entry point)
CMD ["node", "index.js"]
