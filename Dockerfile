# Use the latest Node runtime as a parent image
FROM node:latest

# Create and change to the app directory
WORKDIR /app/products

# Copy package.json and package-lock.json before copying the rest of the application
# Utilize Docker cache by copying package.json and package-lock.json first
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Change the ownership of the application files to the non-root user
RUN chown -R node:node /app/products

# Switch to the non-root user
USER node

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the application
CMD ["npm", "run", "start"]
