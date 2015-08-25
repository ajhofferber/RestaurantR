class WelcomeController < ApplicationController

  get '/' do
    @parties = Party.all
    @items = Item.all
    @orders = Order.all
    erb :index
  end

end
