FROM php:7.2-cli
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    && docker-php-ext-install -j$(nproc) zip
