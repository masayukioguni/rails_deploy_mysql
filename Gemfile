source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'therubyracer', "~> 0.10.2"
gem 'libv8', '~> 3.3.10'

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', require: false
end

gem 'execjs'
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development


# Use debugger
# gem 'debugger', group: [:development, :test]
group :development, :test do
	gem 'spork'
	gem 'guard'
	gem 'rspec-rails'
	gem 'factory_girl_rails'
	gem 'guard-rspec'
	gem 'guard-spork'
	gem 'guard-rails'
	gem 'guard-bundler'
	gem 'pry'
	gem 'pry-rails'
	gem 'pry-doc'
	gem 'faker'

	gem 'rb-inotify', :require => false
	gem 'rb-fsevent', :require => false
	gem 'libnotify', :require => false
	gem 'growl', :require => false
	gem 'rails-footnotes', '>= 3.7.9'
end

group :development do
	gem 'capistrano'
	gem 'capistrano_colors'
	gem 'rvm-capistrano'
	gem 'unicorn-rails'
	gem 'capistrano-unicorn'
	gem 'capistrano-supervisord'
	gem 'capistrano-rbenv'
end
