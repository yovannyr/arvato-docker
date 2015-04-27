FROM postgres:latest
MAINTAINER Eric Li <eric.li@bertelsmann.com.cn>

# https://registry.hub.docker.com/_/postgres/
ADD fortytwo_local.sql.gz /tmp/
COPY aroma-setup.sh /docker-entrypoint-initdb.d/aroma-setup.sh