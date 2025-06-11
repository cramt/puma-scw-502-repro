FROM docker.io/library/ruby:3.4.4-slim-bullseye

RUN bundle config --global frozen 1 \
  && apt-get update -y \
  # runtime deps
  && apt-get install libc-dev libssl-dev make gcc curl pkg-config -y --no-install-recommends
COPY Gemfile* ./
RUN bundle install
COPY ./ ./
CMD ["bundle", "puma", "-C", "puma.rb"]
