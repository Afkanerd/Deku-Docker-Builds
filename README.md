# Deku Cloud Docker Builds

Build and deploy Deku cloud microservices with docker

<b>Configurations</b> Runnig the make command would handle creating the default
necessary dependencies

```bash
make
```

<b>Instructions</b>

- Default environmental variables are found in the
  [.env file](https://github.com/Afkanerd/Deku-Docker-Builds/blob/main/.env)

<b>Running</b>

###### Using a startup script

Most of the default variables have been configured in the .env file. It is safe
to leave those as there are. See a list of
[required environment variables](#required_envs) below.

You can create a copy of the
[startup-script.example](https://github.com/Afkanerd/Deku-Docker-Builds/blob/main/startup-script.example)
for a .sh file in the root of the directory.

> There is a .gitignore to ignore all .sh files.

###### Manually

You can manually run and start the images with the
[command below](#manual_command)

###### required_envs

```env
# Directory containing all the ssl/tls files (ca-bundle, crt, key)
SSL_FILE_PATH=

# tls certificate file (.crt)
SSL_CERTIFICATE=

# tls key file (.key)
SSL_KEY=

# tls ca-bundle file (.ca-bundle)
SSL_PEM=

# The primary domain to be used by the Front-end and Cloud (without the protocol ie http or https)
SSL_SERVER_NAME=

# Same as SSL_SERVER_NAME above
# If no SSL is intended, this can be used
HOST=

# Encrytion key Used for encrypting the data.
ENCRYPTION_KEY=

# Hashing salt used for the hashing the data
HASH_SALT=

# MySQL creds
MYSQL_HOST=
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_DATABASE=

# Can be acquired from https://www.google.com/recaptcha/
ENABLE_RECAPTCHA=
RECAPTCHA_SECRET_KEY=
RECAPTCHA_SITE_KEY=

# RabbitMQ configurations for publishing messages
# RabbitMQ user for management and user auth
RABBITMQ_DEFAULT_USER=

# RabbitMQ password for management and user auth
RABBITMQ_DEFAULT_PASS=

```

###### manual_command

```bash
SSL_FILE_PATH= \
SSL_SERVER_NAME= \
SSL_CERTIFICATE= \
SSL_KEY= \
SSL_PEM= \
HOST= \
ORIGINS= \
ENCRYPTION_KEY= \
HASH_SALT= \
MYSQL_HOST= \
MYSQL_USER= \
MYSQL_PASSWORD= \
MYSQL_DATABASE= \
ENABLE_RECAPTCHA= \
RECAPTCHA_SECRET_KEY= \
RECAPTCHA_SITE_KEY= \
RMQ_SSL= \
RABBITMQ_DEFAULT_USER= \
RABBITMQ_DEFAULT_PASS= \
docker-compose --project-name deku up -d --build
```
