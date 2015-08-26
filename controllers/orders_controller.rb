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

# '/orders'
post '/' do
  order = Order.create(params[:order])
  redirect "/parties/#{order.party_id}"
end


# delete '/:id' do
#   item = Item.find(params[:id])
#   item.delete()
#   redirect '/'
# end
#


end
