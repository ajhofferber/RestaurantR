class PartiesController < ApplicationController

  #Party Index-show all the parties
  get '/' do
    @parties = Party.open
    erb :'parties/index'
  end

  get '/new' do
    @parties = Party.open
    @table_number = params[:table_number]
    erb :'parties/new'
  end

  #create new party
  get '/new/:table_number' do
    @parties = Party.open
    @table_number = params[:table_number]
    erb :'parties/info'
  end

  post '/new' do
    redirect "/parties/new/#{params[:table_number]}"
  end

  #post new party
  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{party.id}"
  end

  post "/:id" do
    party = Party.find(params[:id])
    Party.where(id: "#{party.id}").update_all(status: 1)
    redirect "/"
  end

  #show party
  get '/:id' do
    @party = Party.find(params[:id])
    @table_number = params[:table_number]
    @orders = Order.all.where(party_id: params[:id])
    @items = Item.all
    @foods = Item.all.where("category = 'foods'")
    @drinks = Item.all.where("category = 'drinks'")
    @server = Server.where(party_id: params[:id])
    erb :'parties/show'
  end

  #delete party
  delete '/:id' do
    party = Party.find(params[:id])
    party.orders.each {|order| order.delete }
    party.delete()
    redirect '/'
  end

end
