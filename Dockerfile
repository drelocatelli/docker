# Use the official PHP image with Apache
FROM php:8.3-apache

# Install system dependencies
RUN apt-get update && \
    apt-get install -y git zip unzip

# Download and install Composer
RUN apt-get remove composer

RUN curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the contents of the local "www" directory into the container
COPY . .

# Expose port 80 to the host
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
