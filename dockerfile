FROM node:18

WORKDIR /app

# Copy only package files first for caching
COPY package*.json ./

# Install dependencies
RUN node -v && npm -v
RUN ls -la
RUN cat package.json
RUN npm install --verbose


# Copy app files
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
