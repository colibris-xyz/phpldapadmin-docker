[![Releases](https://img.shields.io/gitlab/v/tag/colibris-xyz/phpldapadmin-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpldapadmin-docker/-/releases)
[![Build status](https://img.shields.io/gitlab/pipeline-status/colibris-xyz/phpldapadmin-docker?branch=main&gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpldapadmin-docker/-/pipelines)
[![License](https://img.shields.io/gitlab/license/colibris-xyz/phpldapadmin-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpldapadmin-docker/-/blob/main/LICENSE)

# All-in-one (nginx + php-fpm) Docker image for phpLDAPadmin

## Usage

```sh
docker run -p '8080:8080' -e LDAP_HOST=your-ldap-host.tld -e LDAP_USE_TLS=true -e LDAP_BASE='dc=your-ldap-host,dc=tld' ghcr.io/colibris-xyz/phpldapadmin
```
