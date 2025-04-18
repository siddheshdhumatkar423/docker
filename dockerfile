# Use an official Python runtime as a base image
FROM python:3.12.6-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Upgrade pip and install dependencies
RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt || \
    tail -n 20 /root/.cache/pip/logs/*

# Expose a port (if your app needs it, modify the port number as needed)
EXPOSE 5000

# Set the default command to run the application (change this to fit your app)
CMD ["python", "app.py"]

