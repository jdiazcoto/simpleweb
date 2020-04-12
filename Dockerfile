# Specify a base image

FROM node:alpine

# Create a working directory

WORKDIR /usr/app

# Copy package.json

COPY ./package.json ./

# Install some dependencies

RUN npm install

COPY ./ ./

# Default command

CMD ["npm", "start"]