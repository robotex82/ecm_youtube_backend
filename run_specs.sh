#!/usr/bin/env sh

gem install bundler && bundle
cd spec/dummy && rake ecm_youtube:install:migrations && rake db:migrate RAILS_ENV=test && cd ../..
guard