#!/bin/bash
set -e

gosu postgres postgres --single -jE <<-EOSQL
	CREATE ROLE p42ro WITH Superuser;
	CREATE ROLE p42rw WITH Superuser;
	CREATE ROLE p42user WITH Superuser;
EOSQL