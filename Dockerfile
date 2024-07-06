# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the local dist directory to the Nginx html directory
COPY dist/ /usr/share/nginx/html

# Copy a custom Nginx configuration file to enable gzip
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
