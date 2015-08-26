class OrdersController < ApplicationController

  get '/' do
   @orders = Order.all
   erb :'orders/index'
 end

 get '/new' do
  @parties = Party.all
  @items = Item.all
  erb :'orders/new'
end

 get '/kitchen' do
   @orders= Order.all
   erb :'orders/kitchen'
  end

 get '/bar' do
   @orders= Order.all
   erb :'orders/bar'
end

post '/' do
  order = Order.create(params[:order])
  redirect "/parties/#{order.party_id}"
end


#Order.find().item.category = "drinks"


 delete '/:id' do
   order = Order.find(params[:id])
   order.delete()
   redirect "/parties/#{order.party_id}"
 end



end
