# Use Ubuntu as the base image
FROM ubuntu:22.04

# Prevent user interaction during package install
ENV DEBIAN_FRONTEND=noninteractive

# Set working directory
WORKDIR /app

# Install Python and pip (modify if you need other environments)
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Copy your application code to the container
COPY . /app

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port your app runs on (change if needed)
EXPOSE 5000

# Run your Python app (change this to your actual app entry point)
CMD ["python3", "app.py"]
