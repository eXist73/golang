#!/usr/bin/env bash
createdb chitchat

FILES=/var/www/html/database/*.sql
for f in $FILES
do
  echo "Processing $f..."
  psql -f $f -d chitchat
done