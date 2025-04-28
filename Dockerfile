# Use official nginx image
FROM nginx:alpine

# Copy custom Nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your HTML file to nginx html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
