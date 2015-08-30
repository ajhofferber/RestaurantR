class ItemsController < ApplicationController

  get '/edit' do
    @items =Item.all
    erb :'items/edit'
  end

  get '/foods' do
    @items = Item.all.where("category = 'foods'")
    erb :'items/index'
  end

  get '/drinks' do
    @items = Item.all.where("category = 'drinks'")
    erb :'items/index'
  end


  get '/new' do
    @items = Item.all
    erb :'items/new'
  end

  get "/:id/edit" do
    @item = Item.find(params[:id])
    erb :'items/ind_edit'
  end

  post '/' do
    item = Item.create(params[:item])
    redirect "/"
  end

  #delete item
    delete '/:id' do
      item = Item.find(params[:id])
      item.delete()
      redirect '/'
    end


end
