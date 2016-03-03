FROM alpine:latest

MAINTAINER Skyler Lewis <sblnog@gmail.com>

RUN apk --update add wget curl git php php-curl php-openssl php-pdo php-json php-phar php-dom php-zip

RUN mkdir -p /var/www

WORKDIR /var/www

COPY . /var/www

VOLUME /var/www

CMD ["/bin/sh"]

ENTRYPOINT ["/bin/sh", "-c"]
