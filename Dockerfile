FROM php:8.1-fpm

# Installing dependencies for the PHP modules
RUN apt-get update && \
    apt-get install -y zip libzip-dev libpng-dev

# Installing additional PHP modules
RUN docker-php-ext-install mysqli pdo pdo_mysql gd zip
