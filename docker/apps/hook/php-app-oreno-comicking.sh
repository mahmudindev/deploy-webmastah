#!/bin/sh

cd /var/www/apps/oreno-comicking

export APP_ENV=prod

composer install --no-dev --optimize-autoloader --no-interaction
php bin/console asset-map:compile
php bin/console cache:warmup
