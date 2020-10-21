FROM phpearth/php:7.2-apache

RUN apk --no-cache add php7.2-fpm php7.2-opcache php7.2-mysqli php7.2-json php7.2-openssl php7.2-curl \
    php7.2-zlib php7.2-xml php7.2-phar php7.2-intl php7.2-dom php7.2-xmlreader php7.2-ctype php7.2-session \
    php7.2-mbstring php7.2-gd curl php7.2-gettext php7.2-zlib php7.2-zip php7.2-xml php7.2-xmlwriter bash php7.2-mysqli \
    php7.2-pdo_mysql bash composer bash-completion mc git openssh openssh-client

COPY config/php.ini $PHP_INI_DIR/conf.d/my-app.ini
COPY config/php.ini /etc/php/7.2/php.ini

COPY config/httpd.conf /etc/apache2/httpd.conf