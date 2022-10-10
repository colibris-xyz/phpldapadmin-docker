FROM trafex/php-nginx:2.6.0

USER root

RUN apk add --no-cache php81-gettext php81-ldap

USER nobody

ARG PHPLDAPADMIN_VERSION=1.2.6.4

RUN curl -L https://github.com/leenooks/phpLDAPadmin/archive/${PHPLDAPADMIN_VERSION}.tar.gz | tar -xz -C /tmp \
    && mv /tmp/phpLDAPadmin-${PHPLDAPADMIN_VERSION}/* /var/www/html/ \
    && rm -rf /tmp/phpLDAPadmin-${PHPLDAPADMIN_VERSION}

COPY --chown=nobody:nobody entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
