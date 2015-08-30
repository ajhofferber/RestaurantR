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
    @orders = Order.order(:created_at)
    erb :'orders/kitchen'
  end

  get '/bar' do
    @orders = Order.order(:created_at)
    erb :'orders/bar'
  end

  post '/' do
    @order = Order.new(params[:order])

    if @order.save
      redirect "/parties/#{order.party_id}"
    else
      raise "Order was invalid due to: #{order.errors.full_messages.join(', ')}"
    end
  end

  post "/kitchen/:id" do
    order = Order.find(params[:id])
    Order.where(id: "#{order.id}").update_all(status: 1)
    redirect "/orders/kitchen"
  end

  post "/bar/:id" do
    order = Order.find(params[:id])
    Order.where(id: "#{order.id}").update_all(status: 1)
    redirect "/orders/bar"
  end

  delete '/:id' do
    order = Order.find(params[:id])
    order.delete()
    redirect "/parties/#{order.party_id}"
  end

  #
  #
  #  delete 'kitchen/:id' do
  #    order = Order.find(params[:id])
  #    order.delete()
  #    redirect "/kitchen"
  #  end
end
