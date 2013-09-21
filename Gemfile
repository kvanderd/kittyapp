source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'carrierwave'
gem "rmagick"
gem 'ancestry'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end


group :test, :development do
  # Can be used to ensure a clean state for testing.
  gem 'database_cleaner'
  #makes testing with rspec easier
  gem 'shoulda-matchers'
  #alternative to irb
  gem 'pry'
  #this is great. Shows active record schema (models)
  gem 'annotate'
  #this is amazing. Turns errors into a live console.
  gem 'better_errors'
  #put ap before params etc.  to see better terminal output.
  gem 'awesome_print'
  #testing framework
  gem 'factory_girl_rails'
   #rspec test
  gem 'rspec-rails'
  #Capybara helps you test web applications by 
  # simulating how a real user would interact with your app.
  gem 'capybara'
  #create test data
  gem 'faker'
  gem 'launchy'
  #browser behavior with capybara
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml-rails'