class PartiesController < ApplicationController

#Party Index-show all the parties
  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

#create new party
  get '/new' do
    @parties = Party.all
    erb :'parties/new'
  end

#post new party
  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{party.id}"
  end

#show party
  get '/:id' do
    @party = Party.find(params[:id])
    @orders = Order.all.where(party_id: params[:id])
    @items = Item.all
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
