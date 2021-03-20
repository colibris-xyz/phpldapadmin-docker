[![GitHub release](https://img.shields.io/github/v/release/colibris-xyz/phpldapadmin-docker.svg?style=flat)](https://github.com/colibris-xyz/phpldapadmin-docker/releases/latest)
[![GitHub license](https://img.shields.io/github/license/colibris-xyz/phpldapadmin-docker)](https://github.com/colibris-xyz/phpldapadmin-docker/blob/main/LICENSE)

# All-in-one (nginx + php-fpm) Docker image for phpLDAPadmin

## Usage

```sh
docker run -p '8080:8080' -e LDAP_HOST=your-ldap-host.tld -e LDAP_USE_TLS=true -e LDAP_BASE='dc=your-ldap-host,dc=tld' ghcr.io/colibris-xyz/phpldapadmin
```
