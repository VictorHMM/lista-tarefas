source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '= 6.0.3.3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use Puma as the app server
gem 'puma', '~> 5.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'listen'

gem 'rack-cors'

gem 'rack-attack'

group :development, :test do
    gem "debug", platforms: %i[ mri mingw x64_mingw ]
    gem 'annotate'
    gem 'faker'
end