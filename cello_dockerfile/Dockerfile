# Cello - LEMP stack optimized for the "instrument" 
# VERSION 1 - EDITION 1
# Author: floatj
# Command format: Instruction [arguments / command] ...

# php-fpm version 7.1.2 
FROM php:7.1.2-fpm
MAINTAINER floatj floatj@gmail.com
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mbstring
RUN docker-php-ext-install -j$(nproc) tokenizer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
