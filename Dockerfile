# Use the official Nginx image as the base
FROM nginx:alpine

# Copy your local index.html file into the default Nginx web directory
# This location is where Nginx serves static files from by default
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (standard HTTP port) from the container
EXPOSE 80

# The default command of the Nginx image already starts the server, 
# so we don't strictly need a CMD instruction, but it's good practice
# to ensure the web server runs in the foreground.
CMD ["nginx", "-g", "daemon off;"]
