# https://docs.docker.com/compose/rails/

FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs less libsodium-dev
RUN mkdir /CDSI_example
WORKDIR /CDSI_example
ADD Gemfile /CDSI_example/Gemfile
ADD Gemfile.lock /CDSI_example/Gemfile.lock
RUN bundle install
ADD . /CDSI_example
