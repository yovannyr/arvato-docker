#!/bin/bash
set -e

touch ~/.pgpass
echo "localhost:5432:fortytwo_local:fortytwo:fortytwo" > ~/.pgpass
chmod 600 ~/.pgpass

# roles setup
gosu postgres postgres --single -jE <<-EOSQL
	CREATE ROLE p42ro WITH Superuser;
	CREATE ROLE p42rw WITH Superuser;
	CREATE ROLE p42user WITH Superuser;
EOSQL

# initial db import
gunzip /tmp/fortytwo_local.sql.gz
gosu postgres postgres & sleep 2 ; psql -U fortytwo -d fortytwo_local -f /tmp/fortytwo_local.sql

# stop server
gosu postgres pg_ctl -D /var/lib/postgresql/data stop