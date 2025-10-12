#!/bin/sh

mkdir /var/www/conf/web

# Oreno ComicKing
#

rm -rf ./oreno-comicking

git clone https://github.com/mahmudindev/oreno-comicking.git ./oreno-comicking

mv /var/www/temp/hook/php-app-oreno-comicking.sh /var/www/apps/php-oreno-comicking.sh
mv /var/www/temp/conf/nginx-http-oreno-comicking.conf /var/www/conf/web/http-oreno-comicking.conf

#
# Oreno ComicKing
