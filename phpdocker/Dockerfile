FROM phpdockerio/php:8.2-fpm
WORKDIR /api

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install php8.2-memcached \
    php8.2-mysql \
    php8.2-redis \
    php8.2-xdebug \
    php8.2-bcmath \
    php8.2-bz2 \
    php8.2-gd \
    php8.2-imagick \
    php8.2-mongodb \
    php8.2-msgpack \
    php8.2-phpdbg \
    php8.2-pspell \
    php8.2-ssh2 php-yaml \
    php8.2-mysqli \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

VOLUME ["/api"]
