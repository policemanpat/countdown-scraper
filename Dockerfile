# Use official Node.js with Playwright dependencies
FROM mcr.microsoft.com/playwright:v1.52.0-jammy


# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Default command
CMD ["npm", "run", "start"]
