require 'sinatra'
require_relative "pizza app.rb"
 enable :sessions
get '/' do
 meats = session[:meats] || meats()
 meat_price = session[:meat_price] || meat_price()
 cheese = session[:cheese] || cheese()
 cheese_price = session[:cheese_price] || cheese_price()
 veggies = session[:veggies] || veggies()
 veggies_price = session[:veggies_price] || veggies_price()
 sauce = session[:sauce] || sauce()
 sauce_price = session[:sauce_price] || sauce_price()
 size = session[:size] || size()
 size_price = session[:size_price] || size_price()
 side_orders = session[:side_orders] || side_orders()
 side_orders_price = session[:side_orders_price] || side_orders_price()

 puts "#{session[:meats]}"
 puts "in get / do size is #{size}"

  erb :pizza_page1, locals:{meats: meats, meat_price: meat_price, size: size}
end

post '/pizzy' do
  puts "in post pizzy params are #{params}"
  meats = params[:thingy]
  meat_price = params[:thingy]
  session[:meats] = params["thingy1"]
  session[:meat_price] = meat_price()
  session[:cheese] = cheese()
  session[:cheese_price] = cheese_price()
  session[:veggies] = veggies()
  session[:veggies_price] = veggies_price()
  session[:sauce] = sauce()
  session[:size] = size()
  puts "#{session[:size]} is session size in post pizzy"
  session[:side_orders] = side_orders()
  p meat_price()
  # p session


  redirect '/'
end

