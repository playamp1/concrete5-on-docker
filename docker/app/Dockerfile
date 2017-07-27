FROM php:7.1.0-fpm-alpine

RUN apk --no-cache add bash curl libmcrypt-dev zlib-dev git unzip freetype freetype-dev libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install pdo_mysql mysqli mcrypt zip gd
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
ADD ./docker-php-entrypoint /usr/local/bin/docker-php-entrypoint
ADD ./.version /var/www/html/.version