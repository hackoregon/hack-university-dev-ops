#!/bin/bash

docker exec -i postgres psql -U postgres -c "CREATE DATABASE raise_effect"
docker exec -i postgres psql -U postgres -c "CREATE USER hoadmin WITH CREATEUSER"
docker exec -i postgres psql -U postgres -c "ALTER USER hoadmin WITH PASSWORD 'ILovePepperoniPizza'"

if [ -f raise_effect.sql.gz ]; then
  gunzip raise_effect.sql.gz
fi
docker exec -i postgres -U hoadmin raise_effect < raise_effect.sql
docker exec -i postgres pg_restore -v -C -h  -U hoadmin -d raise_effect raise_effect.dump

