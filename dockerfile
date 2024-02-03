FROM php:8.3-apache

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
# Ghostscript is required for rendering PDF previews
		git \
	; \
	rm -rf /var/lib/apt/lists/*;\
    git clone https://github.com/qkqpttgf/OneManager-php.git /var/www/html;\
    chown -R www-data:www-data /var/www/html;\
    a2enmod rewrite;\
    service apache2 restart

VOLUME [ "/var/www/html/" ]


COPY docker-entrypoint.sh /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["apache2-foreground"]
