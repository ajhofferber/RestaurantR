require "bundler"
Bundler.require()

#REQUIRE MODELS OKAY?!


#REQUIRE CONTROLLERS OKAY?!
require './controllers/application_controller'
require './controllers/welcome_controller'

#WRITE SOME ROUTES OKAY?
#map('/parties'){ run PartiesController }
#map('/food_items'){ run FoodsController }
#map('/orders'){ run OrdersController }
map('/'){ run WelcomeController }
