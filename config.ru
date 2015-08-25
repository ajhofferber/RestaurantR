require "bundler"
Bundler.require()

#REQUIRE MODELS OKAY?!
require './models/party.rb'
require './models/order.rb'
require './models/item.rb'

#REQUIRE CONTROLLERS OKAY?!
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/parties_controller'
require './controllers/items_controller'
require './controllers/orders_controller'

#WRITE SOME ROUTES OKAY?
map('/parties'){ run PartiesController }
map('/items'){ run ItemsController }
map('/orders'){ run OrdersController }
map('/'){ run WelcomeController }
