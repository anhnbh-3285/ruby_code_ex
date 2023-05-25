source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'figaro'
gem 'jbuilder', '~> 2.7'
gem 'mysql2'
gem 'puma', '~> 4.1'
gem 'rails', '~> 7.0.0', '>= 7.0.0'
gem 'sass-rails', '>= 6'
gem 'slim'
gem 'webpacker', '~> 4.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'bundler-audit'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'letter_opener_web'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '4.0.0.beta3'
  gem 'rubocop', '0.85.1', require: false
  gem 'rubocop-checkstyle_formatter', require: false
  gem 'listen', '~> 3.2'
end

group :development do
  #gem 'bullet', '~> 6.0'
  gem 'bullet'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'brakeman', require: false
  gem 'capybara', '>= 2.15'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# For deploy
gem 'capistrano'
gem 'capistrano-bundler'
gem 'capistrano-rails'
gem 'capistrano-rvm'
gem 'capistrano3-puma'
gem 'rack-cors', :require => 'rack/cors'
gem 'aws-sdk', '~> 2'
gem 'capistrano-figaro-yml'
gem 'capistrano-faster-assets'
