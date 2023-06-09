FROM php:8.1.18-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R o-wx /var/www/html
CMD ["apache2-foreground"]