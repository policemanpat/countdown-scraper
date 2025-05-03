# Use official Node.js with Playwright dependencies
FROM mcr.microsoft.com/playwright:v1.43.1-jammy

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Default command (edit if needed)
CMD ["npm", "run", "start"]
