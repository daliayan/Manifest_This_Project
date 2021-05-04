class DreamController < ApplicationController
    
    get '/dreams' do 
        @dreams = Dream.all
        erb :'dreams/index'
    end

    get '/dreams/new' do
        not_logged_in
        erb :'dreams/new'        
    end

    get '/dreams/:id' do
        not_logged_in
        @dream = Dream.find(params[:id])
        erb :'dreams/show'                
    end

    post '/dreams' do
        not_logged_in
        @dream = current_user.dreams.build(params)
        @dream.save
        redirect '/dreams'
    end

    get '/dreams/:id/edit' do              
        @dream = Dream.find(params[:id])
        redirect_unknown_user
        erb :'dreams/edit'
    end

    patch '/dreams/:id' do                                  
        @dream = Dream.find(params[:id]) 
        redirect_unknown_user       
        @dream.update(params["dream"])
        redirect "/dreams/#{@dream.id}"
    end

    delete "/dreams/:id" do
        @dream = Dream.find(params[:id])
        redirect_unknown_user
        @dream.destroy
        redirect '/dreams'  
    end
end