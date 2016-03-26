source 'https://rubygems.org'
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.3'
#converts Less to Sass and makes all the necessary Bootstrap files available to the current application
gem 'bootstrap-sass',       '3.2.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.5.3'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# markdown editor
gem 'rails-bootstrap-markdown', '2.6.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Authentication library
gem 'devise', '3.5.2'
# delayed mail sending
gem 'delayed_job_active_record'
# authorization to restrict access
gem "pundit"
# omniauth
gem 'omniauth'
# omniauth facebook login
gem 'omniauth-facebook'
# omniauth facebook login
gem 'omniauth-twitter'
# omniauth google login
gem 'omniauth-google-oauth2'
# To make the password digest, has_secure_password uses a state-of- the-art hash function called bcrypt
gem 'bcrypt', '3.1.7'
# for pagination of any collection of entities
gem 'kaminari'
# for adding font-awesome icons
gem "font-awesome-rails"
# library to generate static pages from markdown
gem 'jekyll', '~>3.0.1'
# markdown processor for jekyll
gem 'redcarpet', '3.3.3'
# to enable pagination on blog index page
gem 'jekyll-paginate'
# Classifier is a general module to allow Bayesian and other types of classifications.
# Classifier Reborn is a fork of cardmagic/classifier under more active development.
gem 'classifier-reborn'
# For searching inside blog
# gem 'indextank'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
# Use ActiveModel has_secure_password

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
group :development, :test do
  gem 'sqlite3',     '1.3.11'
  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
  gem 'spring',      '1.1.3'
end
group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace', '0.1.3'
  gem 'guard-minitest', '2.3.1'
end
group :production do
  # Use postgresql as the database for Active Record
  gem 'pg', '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma', '2.15.3'
end
