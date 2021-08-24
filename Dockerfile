FROM yiisoftware/yii2-php:8.0-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        git \
        zip \
        unzip
        
RUN apt-get install -y zlib1g.dev

RUN docker-php-ext-install bcmath

RUN pecl channel-update pecl.php.net
RUN pecl install xdebug

RUN pecl install xhprof

# /usr/local/etc/php/conf.d/xdebug.ini
# /usr/local/etc/php/conf.d/

RUN pecl install grpc-1.30.0
RUN pecl install protobuf-3.12.2
