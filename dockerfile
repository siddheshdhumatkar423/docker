# Use Node.js official LTS version
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app
COPY . .

# Expose the app port (change if needed)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
