require './config/environment'

class ApplicationController < Sinatra::Base  # Created the App controller that inherits from Sinatra Base - has Sinatra functionality

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "this_is_a_secret_shh"
  end

  get '/' do 
    erb :index 
  end

  helpers do    #views can access this method
    def logged_in?
      !!current_user[:user_id]
    end

    def current_user    #memoization
      current_user ||= User.find_by(id: session[:user_id])
    end 
  end

  # private
    # def not_logged_in
    #     if !logged_in?           #leave method to make them login           
    #       redirect '/login'
    #     end 
    # end
end


# separation of concerns and single responsibility

#The go-between for models and views. 
#The controller relays data from the browser to the application,
#and from the application to the browser.

