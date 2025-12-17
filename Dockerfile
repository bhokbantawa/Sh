FROM php:8.1-apache

# Disable other MPMs (VERY IMPORTANT)
RUN a2dismod mpm_event mpm_worker || true
RUN a2enmod mpm_prefork rewrite

# Copy project files
COPY . /var/www/html/

# Correct permissions
RUN chown -R www-data:www-data /var/www/html
