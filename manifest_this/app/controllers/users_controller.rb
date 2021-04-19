#Browsers send requests, and servers send responses
#USING 7 HTTP(HYPER TEXT TRANSFER PROTOCOL) REQUESTS (get/post/put/delete/patch...)

class UsersController < ApplicationController

    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
    end

    get '/logout' do
    end

end

#CRUD: Create, Read, Update, Destroy

# separation of concerns and single responsibility

#The go-between for models and views. The controller relays data 
#from the browser to the application, and from the application to the browser.