class UserController < ApplicationController

  get '/error' do
    erb :error
  end
  
  get '/reused' do
    erb :reused 
  end

 get '/signup' do
    erb :'users/new'
  end

  post '/signup' do
    user = User.new(:username => params[:username], :password => params[:password])
    if User.find_by_username(params[:username])
      redirect '/reused'
    else
      user.save
      session[:user_id] = user.id 
      redirect '/dreams'
    end
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by_username(params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/dreams'
    else
      redirect '/error'
    end
  end

  get '/logout' do
      session.clear
      redirect '/login'
  end

end