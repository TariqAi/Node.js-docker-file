# Use Node.js version 12 as the base image
FROM node:12

# Set the working directory inside the container to (/app)
WORKDIR /app

# Copy docker-compose YAML files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the "build context" to the "working directory" inside the container
COPY . .

# Set an environment variable for the port
ENV port=8080

# Expose port 8080 to the host
EXPOSE 8080

# Specify the command to run the application
CMD ["npm", "start"]
