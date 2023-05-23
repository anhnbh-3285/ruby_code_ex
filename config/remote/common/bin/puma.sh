#!/bin/bash

cd /usr/local/rails_apps/Rails6Skeleton/current

source /home/deploy/.env

/home/deploy/.rvm/bin/rvm default do bundle exec puma -C /usr/local/rails_apps/Rails6Skeleton/shared/config/puma.rb
