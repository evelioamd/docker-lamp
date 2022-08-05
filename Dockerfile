FROM php:7.4-apache
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
ARG DEBIAN_FRONTEND=noninteractive
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd
RUN usermod -u 1000 www-data;
RUN a2enmod rewrite