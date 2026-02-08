FROM php:fpm
RUN apt-get update && \
  docker-php-ext-install mysqli

WORKDIR /var/www/php

EXPOSE 80
