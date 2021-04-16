require './config/environment'

class ApplicationController < Sinatra::Base  # Created the App controller that inherits from Sinatra Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "this_is_a_secret"
  end
  
end


# separation of concerns and single responsibility

#The go-between for models and views. 
#The controller relays data from the browser to the application,
#and from the application to the browser.