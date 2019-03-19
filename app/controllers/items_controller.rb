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
    
    post '/items' do 
        item = Item.new(name: params[:name], cost: params[:cost], listing_price: params[:listing_price], condition: params[:condition])
        if item.save
            #send me somewhere
            redirect "/items/#{item.id}"
        else
            #re-render the new form
        end
    end
end