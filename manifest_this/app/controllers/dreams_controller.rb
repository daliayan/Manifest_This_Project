class DreamsController < ApplicationController

    #Allows me to GET all of my dreams ~manifestations~ READ's file
    get '/dreams' do 
        @dreams = Dream.all
        erb :'dreams/index'
    end

    #Allows me to view the form that CREATES a dream ~manifestation~
    get '/dreams/new' do
        erb :'dreams/new'
    end

    #Allows me to get one dream ~manifestiation~ READ's file
    get '/dreams/:id' do
        @dream = Dream.find(params[:id])
        erb :'dreams/show'
    end

    #Creates a new dream ~manifestation~
    post '/dreams' do
    end

    #Allows me to view and edit one particular dream ~manifestation~
    get '/dreams/:id/edit' do
        @dream = Dream.find(params[:id])
        erb :'dreams/edit'
    end

    #Allows me to update one particular dream ~manifestation~
    patch '/dreams/:id' do
        @dream = Dream.find(params[:id])
        @dream.update(params["dream"])
        redirect "/dreams/#{@dream.id}"
    end

    #Allows me to destroy an dream ~manifestation entry~
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

