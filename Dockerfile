FROM yiisoftware/yii2-php:8.0-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        git \
        zip \
        unzip

RUN docker-php-ext-install bcmath

RUN pecl channel-update pecl.php.net
RUN pecl install xdebug

RUN pecl install xhprof

# /usr/local/etc/php/conf.d/xdebug.ini
# /usr/local/etc/php/conf.d/
