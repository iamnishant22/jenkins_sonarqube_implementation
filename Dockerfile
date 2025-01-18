
FROM nginx:1.21.6

# Create a non-root user and group
RUN addgroup -g 1000 appgroup && adduser -u 1000 -G appgroup -h /home/appuser -s /bin/sh -D appuser

# Copy the application files and set permissions
COPY . /usr/share/nginx/html/
RUN chown -R appuser:appgroup /usr/share/nginx/html

# Switch to the non-root user
USER appuser

# Expose the port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
