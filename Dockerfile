FROM ubuntu:16.04
MAINTAINER Alessandro Oliveira <alessandro@dynamicflow.com.br>
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl \
                       git \
                       php \
                       php-mcrypt \
                       php-gd \
                       php-mbstring \
                       php-xml \
                       php-mysql \
                       php-redis \
                       apache2 \
                       libapache2-mod-php && \
    rm -rf /var/lib/apt/* && \
    rm -rf /var/cache/apt/* && \
    rm /etc/apache2/sites-enabled/* && \
    rm -rf /var/www/html && \
    a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- args --install-dir=/usr/local/bin --filename composer
