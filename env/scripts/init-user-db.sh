#!/bin/sh
set -e

echo "============================ init script start ===================================="
set -x
# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     CREATE USER root;
# 	CREATE DATABASE root;
# 	GRANT ALL PRIVILEGES ON DATABASE root TO root;
# EOSQL
set +x
echo "============================ init script end   ===================================="
