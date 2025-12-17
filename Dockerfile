# PHP with Apache
FROM php:8.1-apache

# Copy all project files to Apache server directory
COPY . /var/www/html/

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set Railway port
ENV PORT=8080
EXPOSE 8080

# Start Apache
CMD ["apache2-foreground"]
