#!/bin/bash

export  DBHOST="raise-effect-db.c1srwyzwwu1a.us-west-2.rds.amazonaws.coma
export PGPASSWORD="ILovePepperoniPizza"
pg_restore -v -C -h $DBHOST -U hoadmin -d raise_effect raise_effect.dump
