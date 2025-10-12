FROM php:8.2-fpm-alpine

RUN apk -U upgrade

RUN apk add --no-cache \
    icu-dev \
    postgresql-dev

RUN docker-php-ext-install \
    intl \
    opcache \
    pdo_pgsql

COPY ./conf/php-fpm-pool.conf /usr/local/etc/php-fpm.d/zz-docker.conf

COPY ./hook /var/www/temp/hook

RUN chmod -R +x /var/www/temp/hook

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/apps
