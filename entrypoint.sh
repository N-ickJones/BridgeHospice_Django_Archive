#!/bin/bash

echo "-- Waiting for PostgreSQL... --"
while ! nc -z db 5432; do
  sleep 1
done
echo "-- Finished loading PostgreSQL --"

echo "-- Running Startup Commands --"
echo "Making Django Migrations"
#python manage.py makemigrations
echo "Migrating Django to PostgreSQL"
#python manage.py migrate
echo "Loading User Groups Fixture into PostgreSQL"
#python manage.py loaddata fixtures/all.json
echo "-- Finished Startup Commands --"

# Run Cronjobs and tail the log file
# cron && tail -f /var/log/cron.log

python manage.py collectstatic --noinput > /dev/null 2>&1


exec "$@"
