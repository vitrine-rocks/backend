# Vitrine.rocks Backend

![](https://github.com/vitrine-rocks/backend/workflows/Deploy/badge.svg)

## Environment:
* Ruby 2.7.1
* Rails 6.0.3
* Postgres 12.4


# Initial setup

## Development environment
### Dependencies
* Docker
* Docker Compose

### Configuration file
* Create an `.env` file (see `.env.sample`)

### Commands
#### Creating docker image

```shell
docker-compose build
```

#### Starting the docker image
```shell
docker-compose up
```

#### Creating database
```shell
docker-compose run --rm web rake db:create
docker-compose run --rm web rake db:migrate
```

#### Connecting to rails console
```shell
docker-compose run web rails c
```

#### Opening the bash
```shell
docker-compose run --rm web bash
```

#### Updateing ruby/ gems
```shell
docker-compose run web bundle
```
