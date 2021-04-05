FROM ruby:3.0.1-alpine
RUN apk add -U --no-cache build-base postgresql-dev

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app/

CMD [ "/app/bin/pearl" ]
