# Use an official Nginx image
FROM nginx:alpine

# Remove default index page
RUN rm -rf /usr/share/nginx/html/*

# Copy our static files to nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
