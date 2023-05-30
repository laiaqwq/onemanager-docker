FROM php:7.2-apache
RUN apt-get -y update && apt-get install -y git &&\
    cd /var/www/&& git clone https://github.com/qkqpttgf/OneManager-php.git html&&\
    chmod 666 .data/config.php&&\
    a2enmod rewrite&&service apache2 restart
