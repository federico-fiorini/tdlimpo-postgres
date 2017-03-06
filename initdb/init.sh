#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER tdlimpo;
    CREATE DATABASE tdlimpo;
    GRANT ALL PRIVILEGES ON DATABASE tdlimpo TO tdlimpo;
EOSQL

psql --user tdlimpo tdlimpo < /docker-entrypoint-initdb.d/init.dmp
