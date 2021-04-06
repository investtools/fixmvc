FROM ruby:2.5.8

WORKDIR /app

COPY . /app

RUN bundle install

CMD ["bundle","exec","guard"]
