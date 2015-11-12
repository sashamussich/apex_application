source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
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

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pry', '~> 0.10.3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


  # =========================================================
  # sample-milia-app specific stuff
  # =========================================================
  # Bundle the extra gems:

  gem 'haml-rails'   
  gem 'html2haml', :git => 'git://github.com/haml/html2haml.git'  # "2.0.0.beta.2", 

  # stuff that heroku likes to have
  gem 'thin'
  gem "SystemTimer", :require => "system_timer", :platforms => :ruby_18
  gem "rack-timeout"
  gem 'rails_12factor'

  gem 'web-app-theme', :git => 'git://github.com/dsaronin/web-app-theme.git'
  gem 'devise', '~>3.4.0'
  gem 'milia', :git => 'git://github.com/dsaronin/milia.git', :branch => 'newdev'

  # airbrake is optional and configured by config.use_airbrake in milia initializer
  # default is false; if you change it to true, uncomment out the line below
  # gem 'airbrake'   # uncomment this if you will use airbrake for exception notifications

  # recaptcha is optional and configured by config.use_recaptcha in milia initializer
  # default is true; if you change it to false, comment out the line below
  # gem 'recaptcha', :require => "recaptcha/rails"

gem 'recaptcha', require: 'recaptcha/rails'
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'