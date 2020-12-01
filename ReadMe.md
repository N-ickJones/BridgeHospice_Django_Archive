
#### Environments

##### Development
  .dev-db.env
    POSTGRES_DB=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=

  .dev-web.env
    DEBUG=True
    SECRET_KEY=
    ALLOWED_HOSTS=localhost, 127.0.0.1, 0.0.0.0, [::1], example.com

    PG_HOST=bh_db_dev
    PG_DATABASE_NAME=postgres
    PG_USERNAME=postgres
    PG_PASSWORD=
    PG_PORT=5432

    CSRF_COOKIE_SECURE=False
    SESSION_COOKIE_SECURE=False

##### Production
  .prod.db.env
    POSTGRES_DB=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=

  .prod.web.env
    DEBUG=False
    SECRET_KEY=
    ALLOWED_HOSTS=localhost, 127.0.0.1, [::1], example.com

    PG_HOST=bh_db_prod
    PG_DATABASE_NAME=postgres
    PG_USERNAME=postgres
    PG_PASSWORD=
    PG_PORT=5432

    CSRF_COOKIE_SECURE=True
    SESSION_COOKIE_SECURE=True

##### Commands
  docker-compose -f docker-compose-dev.yml up --build -d
  docker-compose -f docker-compose-dev.yml stop
  docker volume inspect bh_data_dev
  docker volume create bh_data_dev
  docker volume rm bh_data_dev
  docker-compose -f docker-compose-prod.yml up --build -d
  docker-compose -f docker-compose-prod.yml stop
  docker volume inspect bh_data_prod
  docker volume create bh_data_prod
  docker volume rm bh_data_prod

#### Permission Groups
    request.User.groups.add(perm_group)
        e.g. perm-group = (parishioner, parish)
    request.User.has_perm('appname.action_model')
        e.g. dashboard.view_mass, _.add_mass, _.del_mass, _.change_mass
    'templates' use django perms
        {% if perms.myapp.can_view_something %}{% endif %}
