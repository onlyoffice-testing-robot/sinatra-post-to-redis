FROM ruby:2.7-alpine

COPY . /root/sinatra-post-to-redis
WORKDIR /root/sinatra-post-to-redis
RUN bundle config set without 'development test'
RUN bundle install
EXPOSE 80
CMD bash -c "RACK_ENV=production ruby app.rb -p 80 -o 0.0.0.0"
