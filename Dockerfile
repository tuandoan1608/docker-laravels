FROM php:7.3-fpm-alpine

WORKDIR /var/www/html
RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY --from=composer /usr/bin/composer /usr/bin/composer
 

 
# Cài đặt các tool cần thiết


