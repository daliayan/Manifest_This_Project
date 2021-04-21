#Browsers send requests, and servers send responses
#USING 7 HTTP(HYPER TEXT TRANSFER PROTOCOL) REQUESTS (get/post/put/delete/patch...)
#Making dynamic web apps that change - not static that stay the same!

class DreamController < ApplicationController

    #Displays a list of all Dreams
    get '/dreams' do 
        @dreams = Dream.all
        erb :'dreams/index'     #matched the request to a controller action
    end

    #Allows me to display ONE dream ~manifestiation~ READ's file
    get '/dreams/:id' do
        @dream = Dream.find_by(params[:id])                                                #This is invoked (block - btwn do&end)
        erb :'dreams/show'          
    end

    #Returns an HTML form to create a new Dream
    get '/dreams/new' do
        erb :'dreams/new'
    end

    
    #Creates a new dream ~manifestation~ - Send data from user to the server
    post '/dreams' do
    end

    #Returns an HTML form to view and edit ONE particular dream ~manifestation~
    get '/dreams/:id/edit' do                                                           #get is the method 
        @dream = Dream.find_by(params[:id])                                                #This is invoked (block - btwn do&end)
        erb :'dreams/edit'
    end

    #Allows me to UPDATE one particular dream ~manifestation~
    patch '/dreams/:id' do                                          #patch is the method
        @dream = Dream.find_by(params[:id])                            #This is invoked (block - btwn do&end)
        @dream.update(params["dream"])
        redirect "/dreams/#{@dream.id}"     #matched the request to a controller action
    end

    #Allows me to DELETE an dream ~manifestation entry~
    delete "dreams/:id" do
        @dream = Dream.find(param[:id])
        @dream.destroy
        redirect "/dreams"      #matched the request to a controller action
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

