FROM ruby:2.6.1

LABEL maintainer="mail@kevinsjoberg.com"

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    nodejs \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN bundle install

COPY . ./
