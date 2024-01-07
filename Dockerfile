FROM node:lts-alpine as builder

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json .

RUN npm install

# Bundle app source
COPY . .

RUN npm run build


FROM nginx:alpine


COPY --from=builder /app/dist /usr/share/nginx/html

