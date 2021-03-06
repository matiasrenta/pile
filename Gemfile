source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# para setear environment variables. https://github.com/bkeepers/dotenv
gem 'dotenv-rails', require: 'dotenv/rails-now' # este require es para que pudan usarse las variables en los gems de abajo
# para Postgresql
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Spree
gem 'spree', '~> 4.1'
gem 'spree_auth_devise', '~> 4.1'
gem 'spree_gateway', '~> 3.7'

# Spree (extensions)
gem 'spree_i18n', github: 'spree-contrib/spree_i18n'
gem 'spree_static_content', github: 'spree-contrib/spree_static_content'
gem 'spree_analytics_trackers', '~> 1.1'
gem 'spree_social', github: 'spree-contrib/spree_social'
gem 'spree_contact_us', github: 'spree-contrib/spree_contact_us'
#gem 'spree_contact_us', github: 'matiasrenta/spree_contact_us'

# Blog (CMS)
#gem 'spree_blog', github: 'johndavid400/spree_blog'
# no funcionan:
# reertech/blogging_spree
# https://github.com/johndavid400/spree_blog.git

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', '~> 3.14', require: false
  gem 'capistrano-bundler', '~> 2.0'
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rbenv', github: "capistrano/rbenv"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
