# Use the Nginx image from Docker Hub as the base image
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Add a new Nginx configuration file
COPY nginx/nginx.conf /etc/nginx/conf.d

# Copy the source code to the Nginx document root
COPY . /usr/share/nginx/html

EXPOSE 80