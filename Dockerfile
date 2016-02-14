FROM rails:4.2.4
MAINTAINER Pedro Silva <zepedro.cs@gmail.com>
RUN mkdir -p /var/app
COPY Gemfile /var/app/Gemfile
COPY Gemfile.lock /var/app/Gemfile.lock
WORKDIR /var/app
RUN gem install bundler
RUN bundle update
CMD rails s -b 0.0.0.0
