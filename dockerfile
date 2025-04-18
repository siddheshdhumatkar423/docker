FROM node:18

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# List files to verify the package.json is copied
RUN ls -la

# Check the contents of package.json (optional)
RUN cat package.json

# Install dependencies
RUN npm install --verbose

# Copy the rest of the app files
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
