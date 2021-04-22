#Browsers send requests, and servers send responses
#USING 7 HTTP(HYPER TEXT TRANSFER PROTOCOL) REQUESTS (get/post/put/delete/patch...)
#Making dynamic web apps that change - not static that stay the same!

class DreamController < ApplicationController

    #Displays a list of all Dreams - READ
    get '/dreams' do 
        @dreams = Dream.all
        erb :'dreams/index'                         #stays in the request
    end

     #Returns an HTML form to create a new Dream - CREATE
     get '/dreams/new' do
        if !logged_in?
            redirect '/login' #leave method to make them login
        end
        erb :'dreams/new'                               #stays in the request
    end

    #Allows me to display ONE dream ~manifestiation~ - READ
    get '/dreams/:id' do
        # redirect_deflect                                             #This is invoked (block - btwn do&end)
        @dream = Dream.find(params[:id])  
        erb :'dreams/show'                          #stays in the request
    end

    #Send data from user to the server              - CREATE
    post '/dreams' do
        # redirect_deflect
        @dream = current_user.dreams.build(params)
        @dream.save
        redirect '/dreams'                          #makes a new get request
    end

    #Returns an HTML form to view/edit ONE particular dream - UPDATE shows form
    get '/dreams/:id/edit' do                                                #get is the method 
        @dream = Dream.find(params[:id])
        # redirect_deflect
        erb :'dreams/edit'          #stays in the request
    end

    #Allows me to UPDATE one particular dream ~manifestation~ - UPDATE - processes form
    patch '/dreams/:id' do                                          #patch is the method
        @dream = Dream.find(params[:id])                            #This is invoked (block - btwn do&end)
        # redirect_deflect
        @dream.update(params["dream"])
        redirect "/dreams/#{@dream.id}"     #matched the request to a controller action - makes a new get request
    end

    #Allows me to DELETE an dream ~manifestation entry~     - DELETE
    delete "/dreams/:id" do
        @dream = Dream.find(params[:id])
        # redirect_deflect
        @dream.destroy
        redirect '/dreams'                      # - makes a new get request
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

