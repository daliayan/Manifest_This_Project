#Browsers send requests, and servers send responses
#USING 7 HTTP(HYPER TEXT TRANSFER PROTOCOL) REQUESTS (get/post/put/delete/patch...)

# REST: Representational State Transfer

class UserController < ApplicationController

    get '/signup' do
        erb :"users/new"
    end

    post '/signup' do

      user = User.new(:username => params[:username], :password => params[:password]) #params is a hash with key value pairs

      if user.username.blank? || user.password.blank?
        redirect '/signup'
      else
        user.save
        session[:user_id] = user.id #adding key/value pairs to my session - saves session specific to user
        redirect '/dreams'
      end
    end

    get '/logout' do
      session.clear #clears session
      redirect '/signup' 
    end
    

    # post '/login' do
    #     @user_name = User.new(:user_id => current_user[:id], :username => params[:username], :password => params[:password])
    #     # if !User.all.includes(@user_name)
    # end

   

    # get '/logout' do
    # end

end

#CRUD: Create, Read, Update, Destroy

# separation of concerns and single responsibility

#The go-between for models and views. The controller relays data 
#from the browser to the application, and from the application to the browser.