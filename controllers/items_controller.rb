class ItemsController < ApplicationController

  get '/foods' do
    
    @items = Item.all.where("category = 'foods'")

    erb :index
  end


  get '/drinks' do

    @items = Item.all.where("category = 'drinks'")

    erb :index
  end
end
