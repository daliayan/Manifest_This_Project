ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(  #allows me to form the connection btwn database and active record
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
#This file is requiring the gems in our Gemfile and giving our program access to them. 
#We're using the establish_connection method from ActiveRecord::Base to connect to our artists database, 
#which will be created in the migration via SQLite3 (the adapter).

#ActiveRecord::Base creates link between Ruby and Databases

require './app/controllers/application_controller'
require_all 'app'
