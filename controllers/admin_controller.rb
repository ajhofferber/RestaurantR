class AdminController < ApplicationController

  get '/' do
    
    erb :'admin/index'
  end

end
