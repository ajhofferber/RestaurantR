class ServersController < ApplicationController

  get '/' do
    @servers = Server.all
    erb :'servers/index'
  end

  get '/new' do
    @servers = Server.all
    erb :'servers/new'
  end
  
  post '/' do
    server = Server.create(params[:server])
    redirect "/"
  end

end
