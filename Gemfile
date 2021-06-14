source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'carrierwave'
gem 'mimemagic'
gem "fog-aws"
gem 'duktape'
#gem 'active_admin_flat_skin'
gem 'arctic_admin'
gem 'jquery-ui-rails'

gem 'kaminari'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass', '~> 3.3.7'
gem 'devise', github: 'plataformatec/devise'
gem 'ckeditor', '~> 4.3'
gem 'httparty', '~> 0.13.7'
gem "simple_form"
gem 'friendly_id'
gem 'jquery-rails'
gem 'sitemap_generator'
gem 'social-share-button', '~> 0.1.6'
gem 'activeadmin', github: 'activeadmin'
gem 'toastr-rails'
gem 'bcrypt',  :require => "bcrypt"
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
