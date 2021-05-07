require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "this_is_a_secret_shh"
  end

  get '/' do 
    erb :index 
  end

  helpers do
    
    def logged_in?
      !!current_user
    end

    def current_user
      current_user ||= User.find_by(id: session[:user_id])
    end
  end

  private
  def not_logged_in
    if !logged_in?         
      redirect '/login'
    end 
  end

  def redirect_unknown_user
    if @dream.user != current_user                  
      redirect '/dreams'
    end
  end

end