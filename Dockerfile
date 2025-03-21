# Use NGINX as the base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default NGINX HTML files
RUN rm -rf ./*

# Copy your project files (HTML, CSS, JS) into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
