FROM php:5.6-apache

# Install the app code
COPY src/index.php /var/www/html

# Install Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
COPY config/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Enable Apache rewrite
RUN a2enmod rewrite
