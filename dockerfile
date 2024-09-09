FROM php:8.2-apache

RUN docker-php-ext-install mysqli

ADD . /var/www/html/

RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80
EXPOSE 80

# Запускаем Apache в режиме foreground
CMD ["apachectl", "-D", "FOREGROUND"]
