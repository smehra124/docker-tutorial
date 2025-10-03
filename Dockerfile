FROM php:8.3-apache

# Enable Apache modules
RUN a2enmod rewrite

# Install dependencies for PHP extensions
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    libicu-dev \
    libmagickwand-dev \
    libssh2-1-dev \
    pkg-config \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd intl zip \
    && pecl install imagick ssh2 \
    && docker-php-ext-enable imagick ssh2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
