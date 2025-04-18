# Use an official Python runtime as a base image
FROM python:3.12.6-slim

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies (e.g., build tools, SSL dependencies)
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app

# Ensure pip is up-to-date and install dependencies
RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose a port (if your app needs it, modify the port number as needed)
EXPOSE 5000

# Set the default command to run the application (change this to fit your app)
CMD ["python", "app.py"]
