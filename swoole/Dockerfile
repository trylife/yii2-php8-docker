FROM php:8.0.9-alpine

RUN apk update
RUN apk add git
RUN apk add zlib

RUN docker-php-ext-install bcmath

RUN pecl channel-update pecl.php.net

# /usr/local/etc/php/conf.d/xdebug.ini
# /usr/local/etc/php/conf.d/

RUN pecl install grpc-1.30.0
RUN pecl install protobuf-3.12.2
RUN pecl install swoole