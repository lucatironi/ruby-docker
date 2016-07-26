FROM ruby:2.3.1
MAINTAINER Luca Tironi <luca.tironi@gmail.com>

ENV APP_ROOT /app
ENV PORT 8080
ENV APPSERVER puma
ENV RACK_ENV production

WORKDIR $APP_ROOT
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN ["bundle", "install", "-j4"]
ADD . $APP_ROOT

EXPOSE $PORT

CMD bundle exec rackup -p $PORT -s $APPSERVER -E $RACK_ENV
