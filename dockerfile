# Use Ubuntu as the base image
FROM ubuntu:22.04

# Prevent user interaction during package install
ENV DEBIAN_FRONTEND=noninteractive

# Set working directory
WORKDIR /app

