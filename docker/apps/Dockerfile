FROM alpine:latest 

RUN apk -U upgrade

RUN apk add --no-cache \
    bash \
    git

COPY ./conf /var/www/temp/conf
COPY ./hook /var/www/temp/hook

RUN chmod -R +x /var/www/temp/hook

WORKDIR /var/www/apps

CMD /var/www/temp/hook/docker-start.sh
