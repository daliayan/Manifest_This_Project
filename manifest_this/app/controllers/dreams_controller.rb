#Browsers send requests, and servers send responses
#USING 7 HTTP(HYPER TEXT TRANSFER PROTOCOL) REQUESTS (get/post/put/delete/patch...)
#Making dynamic web apps that change - not static that stay the same!

class DreamsController < ApplicationController

    #Displays a list of all Dreams
    get '/dreams' do 
        @dreams = Dream.all
        erb :'dreams/index'
    end

    #Returns an HTML form to create a new Dream
    get '/dreams/new' do
        erb :'dreams/new'
    end

    #Allows me to display ONE dream ~manifestiation~ READ's file
    get '/dreams/:id' do
        @dream = Dream.find(params[:id])
        erb :'dreams/show'
    end

    #Creates a new dream ~manifestation~ - Send data from user to the server
    post '/dreams' do
    end

    #Returns an HTML form to view and edit one particular dream ~manifestation~
    get '/dreams/:id/edit' do
        @dream = Dream.find(params[:id])
        erb :'dreams/edit'
    end

    #Allows me to UPDATE one particular dream ~manifestation~
    patch '/dreams/:id' do
        @dream = Dream.find(params[:id])
        @dream.update(params["dream"])
        redirect "/dreams/#{@dream.id}"
    end

    #Allows me to DELETE an dream ~manifestation entry~
    delete "dreams/:id" do
        @dream = Dream.find(param[:id])
        @dream.destroy
        redirect "/dreams"
    end
    

end

#CRUD: Create, Read, Update, Destroy
# get all dreams
    # get dreams/new
    #post dreams 
    #get dreams/:id
    #get dreams/:id/edit - to edit the post
    #patch dreams/:id - to update the post
    #delete dreams/:id

# separation of concerns and single responsibility

#The go-between for models and views. The controller relays 
#data from the browser to the application, and from the application to the browser.

