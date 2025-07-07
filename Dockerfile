FROM node:20

# Install system dependencies for canvas
RUN apt-get update && apt-get install -y     build-essential     libcairo2-dev     libpango1.0-dev     libjpeg-dev     libgif-dev     librsvg2-dev     libpixman-1-dev     pkg-config

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port for the development server
EXPOSE 7080

# Start the development server
CMD ["npm", "start"]

