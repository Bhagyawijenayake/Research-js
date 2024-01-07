# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json ./

# Install dependencies
RUN npm install
RUN npm ci --production

# Copy the server.js file to the container
COPY . .

RUN ls -la


# Expose the port that your application listens on
EXPOSE 8081

# Start the Node.js application
CMD [ "node", "server.js" ]