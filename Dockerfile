# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update &&     apt-get install -y nginx &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*

# Expose port 8080 for Nginx
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
