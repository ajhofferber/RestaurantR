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
       order = Order.all
       @orders= order.order(:created_at)
       erb :'orders/kitchen'
      end

     get '/bar' do
       order = Order.all
       @orders= order.order(:created_at)
       erb :'orders/bar'
    end

    post '/' do
      order = Order.create(params[:order])
      redirect "/parties/#{order.party_id}"
    end
    # 
    # put "/:id" do
    #  order = Order.find(params[:id])
    #  order.update(params[status: 1])
    #  redirect "/"
    # end


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
