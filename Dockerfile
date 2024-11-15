# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy your HTML, CSS, and image files to the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 to access the server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
