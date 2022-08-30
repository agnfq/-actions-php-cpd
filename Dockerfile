FROM php:7.3-cli

LABEL version="1.1"
LABEL repository="https://github.com/agnfq/actions-php-cpd"
LABEL homepage="https://github.com/agnfq/actions-php-cpd"
LABEL maintainer="Andy Gonzales <andres.gonzales@nfq.asia>"

RUN curl -L https://phar.phpunit.de/phpcpd.phar -o /phpcpd

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /phpcpd
ENTRYPOINT ["/entrypoint.sh"]
