source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

gem 'pg'

gem 'carrierwave'
gem 'ember-rails'
gem 'fog'
gem 'thin'

gem 'devise', git: 'https://github.com/plataformatec/devise.git', branch: 'rails4'
gem 'bcrypt-ruby'              # password encryption

gem 'inherited_resources'      # for easy RESTful API controller scaffolding
gem 'active_model_serializers' # works out of the box with ember-data

gem 'ember-rails'              # ember framework
gem 'ember-auth-rails'         # client-side authentication

gem 'protected_attributes'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'                 # for tests
  gem 'spork'                       # speedier tests
  gem 'guard-rspec'                 # watch app files
  gem 'guard-spork'                 # spork integration
  gem 'database_cleaner'            # cleanup database in tests
  gem 'fabrication'                 # model stubber
  gem 'shoulda'                     # model spec tester
  gem 'rb-inotify', require: false  # Linux file notification
  gem 'rb-fsevent', require: false  # OSX file notification
  gem 'rb-fchange', require: false  # Windows file notification
end

gem 'haml'                     # easier to write templates
gem 'haml-rails'               # rails integration
gem 'hamlbars'                 # easier to write handlebars

gem 'unicorn'                  # better server gem for heroku

gem 'newrelic_rpm'             # prevent heroku from idling

gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
