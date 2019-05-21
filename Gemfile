source 'https://rubygems.org'
ruby '>= 2.2.0', '< 3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'

# managing images and profile pictures
gem "paperclip", "~> 6.0.0"

gem 'devise'

gem "haml-rails"

gem 'figaro'

gem 'simple_form', '~> 3.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# bootstrap for HTML & CSS
gem 'bootstrap'

# converting activerecord table to spreadsheet
gem 'rubyzip', '= 1.0.0'
gem 'axlsx', '= 2.0.1'
gem 'axlsx_rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.11'
  gem 'foreman'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 3.0'
  gem 'puma'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# make sure the following gems are in your production group:
group :production do
  gem 'pg', '~> 0.15'              # use PostgreSQL in production (Heroku)
  gem 'rails_12factor'  # Heroku-specific production settings
end

# setup Cucumber, RSpec, Guard support
group :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs
  gem 'database_cleaner' # required by Cucumber
  gem 'factory_bot_rails', '4.11.1', :require => false # if using FactoryBot
  gem 'metric_fu'        # collect code metrics
end
