FROM php:7.1.9-apache

LABEL maintainer="Matt Larson"
COPY config/php.ini /usr/local/etc/php/
COPY index.php /var/www/html