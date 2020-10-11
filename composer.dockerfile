FROM composer:latest

ADD ./composer/config.json /tmp/config.json

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

WORKDIR /var/www/html
