FROM php:7.2-apache
RUN apt-get -y update && apt-get install -y --no-install-recommends git &&\
    rm -rf /var/lib/apt/lists/*&&\
    cd /var/www/&& git clone https://github.com/qkqpttgf/OneManager-php.git html&&\
    pwd&&\
    cd html&&\
    chmod 666 .data/config.php&&\
    a2enmod rewrite&&service apache2 restart
