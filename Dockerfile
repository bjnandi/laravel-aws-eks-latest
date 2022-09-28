FROM php:8.1.0RC1-apache

LABEL maintainer="Gbenga Oni B. <onigbenga@yahoo.ca>" \
      version="1.0"

RUN apt-get update && apt-get install -y \
    build-essential \
    default-mysql-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    dos2unix \
    supervisor\
    libonig-dev

RUN docker-php-ext-install pdo pdo_mysql \ 
    && a2enmod rewrite negotiation \
    && docker-php-ext-install opcache


COPY --chown=www-data:www-data . /srv/app 
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf 

WORKDIR /srv/app 