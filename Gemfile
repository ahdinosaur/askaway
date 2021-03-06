source 'https://rubygems.org'

gem 'rails', '4.0.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'devise'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'rack-canonical-host'

# Gems used only for assets and not required
# in production environments by default.

gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'bootstrap-sass', '~> 3.1.1.1'
gem 'uglifier', '>= 1.0.3'
gem 'jquery-rails'
gem 'angularjs-rails'
gem 'haml-rails'
gem 'simple_form', git: 'https://github.com/plataformatec/simple_form.git'

gem 'gravtastic'
gem 'font-awesome-sass'
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'pundit'
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem 'rabl'
gem 'friendly_id', '~> 5.0.0'
gem 'obscenity'
gem 'workflow'
gem 'raygun4ruby'

group :development do
  gem 'thin'
  gem 'quiet_assets'
  gem 'debugger', :platforms => [:mingw_19, :ruby_19]
  gem 'byebug', :platforms => [:mingw_20, :ruby_20]
  gem 'pry-byebug', :platforms => [:mingw_20, :ruby_20]
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'guard-livereload', require: false
  gem 'annotate'
  gem "better_errors"
  gem "binding_of_caller"
  gem "rack-livereload"
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara'
  gem 'capybara-email'
  gem 'poltergeist'
  gem 'faker'
  gem 'factory_girl_rails', '~> 4.4.0'
  gem 'launchy'
  gem 'pry-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'shoulda-matchers'
  gem 'timecop'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
