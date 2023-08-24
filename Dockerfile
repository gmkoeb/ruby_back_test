FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app

EXPOSE 3000
