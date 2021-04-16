require './config/environment'

class ApplicationController < Sinatra::Base  # Created the App controller that inherits from Sinatra Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
end
