# Use the official Node.js image as the base image
FROM node:lts-alpine as builder

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install



# Bundle app source
COPY . .

# Run the build script
RUN npm run build

# Create a new stage using the official Nginx image
FROM nginx:alpine

# Copy the built files from the builder stage to the Nginx server
COPY --from=builder /app/public /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
