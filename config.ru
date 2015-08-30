require "bundler"
Bundler.require()

#REQUIRE MODELS OKAY?!
require './models/party.rb'
require './models/order.rb'
require './models/item.rb'
require './models/server.rb'

#REQUIRE CONTROLLERS OKAY?!
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/parties_controller'
require './controllers/items_controller'
require './controllers/orders_controller'
require './controllers/servers_controller'
require './controllers/admin_controller'

#WRITE SOME ROUTES OKAY?
map('/parties'){ run PartiesController }
map('/items'){ run ItemsController }
map('/orders'){ run OrdersController }
map('/servers'){ run ServersController}
map('/admin'){run AdminController }
map('/'){ run WelcomeController }

if ENV['console']
  binding.pry
  exit
end
