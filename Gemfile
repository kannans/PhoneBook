source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem "nested_form"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler'
gem 'devise'
gem 'devise_ldap_authenticatable'
gem 'cancancan', '~> 1.10'
gem 'rolify'
gem 'mysql2'
gem 'bcrypt', '~> 3.1.7'
gem 'therubyracer', platforms: :ruby

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
end
group :test do
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'shoulda-matchers', require: false
  gem 'simplecov-console'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'faker'
  gem 'rspec-rails', '3.5.0'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

