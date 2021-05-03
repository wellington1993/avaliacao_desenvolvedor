# https://blog.cloud66.com/deploying-rails-6-assets-with-docker/
# https://github.com/docker/labs/tree/master/developer-tools/ruby
# https://hub.docker.com/_/ruby
# https://docs.docker.com/samples/rails/
# http://chrisstump.online/2016/02/20/docker-existing-rails-application/
FROM ruby:2.7.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential nodejs yarn
RUN apt-get install -y sqlite3 libsqlite3-dev openssl libssl-dev libyaml-dev libreadline-dev libxml2-dev libxslt1-dev
RUN apt-get install zlib1g-dev liblzma-dev patch
RUN apt-get install pkg-config libxml2-dev libxslt-dev

ENV RAILS_ENV development
ENV APP_HOME /app
RUN mkdir $APP_HOME
RUN mkdir -p $APP_HOME/tmp/pids
WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/Gemfile

RUN gem install bundler
# Add Gemfile stuff first as a build optimization
# This way the `bundle install` is only run when either Gemfile or Gemfile.lock is changed
# This is because `bundle install` can take a long time
# Without this optimization `bundle install` would run if _any_ file is changed within the project, no bueno
ADD Gemfile* $APP_HOME/

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
COPY . .

# Add rake and its dependencies
ADD config $APP_HOME/config
ADD Rakefile $APP_HOME/

ADD . $APP_HOME

ENV PATH $APP_HOME//bin:$PATH

RUN yarn install --check-files
CMD ["rails","server","-b","0.0.0.0"]

