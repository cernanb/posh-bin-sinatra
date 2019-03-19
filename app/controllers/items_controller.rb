class ItemsController < ApplicationController

    get '/items' do
        @items = Item.all

        erb :'items/index'
    end
    #define the route to render a form to create a new item
    get '/items/new' do
        erb :'items/new'
    end
    
    get '/items/:id' do 
        @item = Item.find(params[:id])
        
        erb :'items/show'
    end

    patch '/items/:id' do
        @item = Item.find(params[:id])
        
        if @item.update(name: params[:name], cost: params[:cost], listing_price: params[:listing_price], condition: params[:condition])
            redirect "/items/#{@item.id}"
        else
            erb :'items/edit'
            # redirect "/items/new"
        end
    end
    
    delete '/items/:id' do
        @item = Item.find(params[:id])

        if @item.delete 
            redirect '/items'
        else
            redirect "/items/#{@item.id}"
        end

    end
    
    get '/items/:id/edit' do #edit 
        @item = Item.find(params[:id])
        
        erb :'items/edit'
    end
    
    post '/items' do  #create
        @item = Item.new(name: params[:name], cost: params[:cost], listing_price: params[:listing_price], condition: params[:condition])
        if @item.save
            redirect "/items/#{item.id}"
        else
            erb :'items/new'
            # redirect "/items/new"
        end
    end
end