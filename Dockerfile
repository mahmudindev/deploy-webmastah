FROM alpine:latest AS apps

RUN apk add --no-cache \
    git

COPY --from=composer /usr/bin/composer /usr/bin/composer

## Oreno ComicKing

RUN ln -s \
    /var/www/apps/oreno-comicking/vendor \
    /var/www/data/oreno-comicking/vendor

WORKDIR /var/www/apps/oreno-comicking

RUN git clone https://github.com/mahmudindev/oreno-comicking.git .

ENV APP_ENV=prod
RUN composer install --no-dev --optimize-autoloader --no-interaction
RUN php bin/console asset-map:compile
RUN php bin/console cache:warmup

## Oreno ComicKing

FROM php:8.2-fpm-alpine AS php

RUN apk add --no-cache \
    libicu-dev \
    libpq-dev

RUN docker-php-ext-install \
    intl \
    opcache \
    pdo \
    pdo_pgsql

FROM openresty/openresty:alpine AS web
