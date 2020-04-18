FROM ruby:alpine

EXPOSE 3000

WORKDIR /home/app/

COPY ./app/Gemfile ./app/Gemfile.lock ./app/

ENV GEM_HOME /home/.gems
ENV GEM_PATH /home/.gems

RUN apk add postgresql-dev build-base tzdata nodejs yarn
RUN cd app && bundle install

# Copy files to workdir, overwrites are possible using volumes
ADD ./ ./

CMD bin/rails server -p $PORT -e  $RAILS
