FROM nginx:alpine

# Copy the static website files into the Nginx server
COPY . /usr/share/nginx/html/

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose custom port
EXPOSE 3579

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
