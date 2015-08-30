class ServersController < ApplicationController

  get '/' do
    @servers = Server.all
    erb :'servers/index'
  end

  get '/new' do
    @servers = Server.all
    erb :'servers/new'
  end

  get "/:id/edit" do
    @server = Server.find(params[:id])
    erb :'servers/edit'
  end

  post '/' do
    server = Server.create(params[:server])
    redirect "/"
  end

  put "/:id" do
    server = Server.find(params[:id])
    server.update(params[:server])
    redirect "/"
  end

  delete '/:id' do
    server = Server.find(params[:id])
    server.delete()
    redirect '/'
  end

end
