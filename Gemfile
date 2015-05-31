source('https://rubygems.org')

gem('sinatra-contrib', :require => 'sinatra/reloader')

group(:production) do
  gem('sinatra')
  gem('sinatra-activerecord')
  gem('pg')
  gem('rake')
end

group(:test) do
  gem('rspec')
  gem('pry')
  gem('capybara')
end