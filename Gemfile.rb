source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'pry'
gem 'rspec'
gem 'cucumber',                  '~> 3.0', require: false
gem 'cucumber-rails',            '~> 1.6', require: false
gem 'cucumber_characteristics',  '~> 0.0.6', require: false
gem 'database_cleaner',          '~> 1.7'
gem 'capybara', '>= 3.26'
gem 'selenium-webdriver'
gem 'webdrivers'


