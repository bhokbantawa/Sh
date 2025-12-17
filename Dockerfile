FROM php:8.1-apache

# Apache rewrite enable
RUN a2enmod rewrite

# Copy project files
COPY . /var/www/html/

# Correct permissions
RUN chown -R www-data:www-data /var/www/html
