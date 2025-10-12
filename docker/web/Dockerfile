FROM openresty/openresty:alpine

RUN apk -U upgrade

COPY ./conf/nginx.conf ./usr/local/openresty/nginx/conf/nginx.conf
COPY ./conf/nginx-http-default.conf ./etc/nginx/conf.d/default.conf

WORKDIR /var/www/apps
