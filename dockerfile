# Use the official NGINX image as the base image
FROM nginx:latest

# Copy static website files from the build directory to the NGINX HTML directory
COPY ./build /usr/share/nginx/html/

# Expose the default NGINX port
EXPOSE 3000

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

