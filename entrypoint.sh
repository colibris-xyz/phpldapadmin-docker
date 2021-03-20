#!/bin/sh

if [ ! -e config/config.inc.php ]; then
    touch config/config.php
fi

echo "Write root config to $PWD/config/config.php"
echo "<?php
\$servers = new Datastore();
\$servers->newServer('ldap_pla');
\$servers->setValue('server', 'name', 'My LDAP Server');
\$servers->setValue('server', 'host', '${LDAP_HOST}');
\$servers->setValue('server', 'tls', ${LDAP_USE_TLS:-false});
\$servers->setValue('server', 'base', array('${LDAP_BASE}'));
\$servers->setValue('login', 'auth_type', 'session');
\$servers->setValue('login', 'bind_id', '${LDAP_BIND_ID}');
" > config/config.php

exec "$@"
