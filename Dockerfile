FROM ruby:2.7.1-alpine

# Minimal requirements to run a Rails app
RUN apk add --no-cache --update build-base \
  linux-headers \
  git \
  postgresql-dev \
  tzdata \
  bash \
  gcompat
# Different layer for gems installation
ADD . /app
WORKDIR /app

RUN gem install bundler -v 2.1.4
RUN bundle install --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1` --retry 3

# Copy the application into the container
# COPY . APP_PATH
# EXPOSE 3000

