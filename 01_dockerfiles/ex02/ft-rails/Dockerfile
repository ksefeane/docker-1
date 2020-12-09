FROM ruby

RUN apt-get update -y && apt-get install build-essential libpq-dev nodejs sqlite3 -y
RUN gem install rails && gem install bundler

ONBUILD COPY rails_app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundle update --bundler
ONBUILD RUN bundle install --without production

ONBUILD RUN bundle exec rake db:migrate
ONBUILD RUN bundle exec rake db:seed

# to build image
# docker build -t ft-rails:on-build
