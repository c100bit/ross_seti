source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# Full-stack web application framework. (https://rubyonrails.org)
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
# Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/] (https://github.com/ged/ruby-pg)
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
# Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications (https://puma.io)
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
# Sass adapter for the Rails asset pipeline. (https://github.com/rails/sass-rails)
gem 'sass-rails', '>= 6'
gem 'active_admin-humanized_enum'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# Use webpack to manage app-like JavaScript modules in Rails (https://github.com/rails/webpacker)
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Turbolinks makes navigating your web application faster (https://github.com/turbolinks/turbolinks)
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# Create JSON structures via a Builder-style DSL (https://github.com/rails/jbuilder)
gem 'jbuilder', '~> 2.7'
# A scheduler process to replace cron. (http://github.com/Rykian/clockwork)
gem 'clockwork'
# Active Admin is a Ruby on Rails plugin for generating administration style interfaces. It abstracts common business application patterns to make it simple for developers to implement beautiful and elegant interfaces with very little effort. (https://activeadmin.info)
gem 'activeadmin', '~> 2.7.0'
# Simple authorization solution for Rails. (https://github.com/CanCanCommunity/cancancan)
gem 'cancancan'
# Flexible authentication solution for Rails with Warden (https://github.com/heartcombo/devise)
gem 'devise'
# Translations for the devise gem (http://github.com/tigrish/devise-i18n)
gem 'devise-i18n'
# Simple, efficient background processing for Ruby (http://sidekiq.org)
gem 'sidekiq'
gem 'graphiql-rails'
# Easily translate ActiveRecord's enums in your ActiveAdmin. (http://github.com/dhyegofernando/active_admin-humanized_enum)
gem 'active_admin-humanized_enum'
gem 'best_in_place', github: 'bernat/best_in_place'

# A GraphQL language and runtime for Ruby (https://github.com/rmosolgo/graphql-ruby)
gem 'graphql'
gem 'translate_enum'
# Validations for Active Storage (https://github.com/igorkasyanchuk/active_storage_validations)
gem 'active_storage_validations'
# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick (https://github.com/minimagick/minimagick)
gem 'mini_magick'
# AWS SDK for Ruby - Amazon S3 (https://github.com/aws/aws-sdk-ruby)
gem 'aws-sdk-s3', require: false
# GraphQL queries and mutations on top of devise_token_auth (https://github.com/graphql-devise/graphql_devise)
gem 'graphql_devise'
# Effortless multi-environment settings in Rails, Sinatra, Pandrino and others (https://github.com/rubyconfig/config)
gem 'config'
gem 'rest-client'
# Russian language support for Ruby and Rails (https://github.com/rs-pro/russian)
gem 'rs_russian', github: 'rs-pro/russian', branch: 'master'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
# Boot large ruby/rails apps faster (https://github.com/Shopify/bootsnap)
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # Ruby fast debugger - base + CLI (https://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # RSpec for Rails (https://github.com/rspec/rspec-rails)
  gem 'rspec-rails', '~> 4.0'
  # factory_bot_rails provides integration between factory_bot and rails 5.0 or newer (https://github.com/thoughtbot/factory_bot_rails)
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # A debugging tool for your Ruby on Rails applications. (https://github.com/rails/web-console)
  gem 'web-console', '>= 3.3.0'
  # Listen to file modifications (https://github.com/guard/listen)
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # Rails application preloader (https://github.com/rails/spring)
  gem 'spring'
  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (http://github.com/ctran/annotate_models)
  gem 'annotate'
  # Makes spring watch files using the listen gem. (https://github.com/jonleighton/spring-watcher-listen)
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# A mountable GraphiQL endpoint for Rails (http://github.com/rmosolgo/graphiql-rails)
gem 'graphiql-rails', group: :development
