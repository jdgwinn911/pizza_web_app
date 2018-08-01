require 'sinatra'
require_relative "pizza app.rb"
 enable :sessions
get '/' do
  erb :pizza_home
end
post '/pizzyhome' do
 

  redirect '/'
end

get '/pizza_page1' do
  meats =  meats()
  cheese = cheese()
  veggies =  veggies()
  sauce = sauce()
  size =  size()
  price = session[:price] || ""
  pizza = session[:pizza] || ""

 
   erb :pizza_page1, locals:{meats: meats,  cheese: cheese, veggies: veggies, sauce: sauce, size: size, pizza: pizza, price: price}

  
end

post '/pizzy' do
  # puts "in post pizzy params are #{params}"
  meats = params[:thingy]
  meat_price = params[:thingy]
  
  doop = params[:thingy1] || []

  temp_pizza = "here's your, "
  price = "that'll be, "
  temp_price = 0
  doop.each do |v|
    temp_pizza += "#{v}, "
    meaty = meats().index(v)
    actual_price = meat_price()[meaty]
    temp_price += actual_price
  end

  doop_cheese = params[:thingy2] || []
  doop_cheese.each do |v|
    temp_pizza += "#{v}, "
    cheesy = cheese().index(v)
    actual_price = cheese_price()[cheesy]
    temp_price += actual_price
  end

  doop_veggies = params[:thingy3] || []
  doop_veggies.each do |v|
    temp_pizza += "#{v}, "
    veggy = veggies().index(v)
    actual_price = veggies_price()[veggy]
    temp_price += actual_price
  end

  doop_sauce = params[:thingy4] || []
  doop_sauce.each do |v|
    temp_pizza += "#{v} sauce, "
    saucy= sauce().index(v)
    actual_price = sauce_price()[saucy]
    temp_price += actual_price
  end

  doop_size = params[:thingy5] || []
  doop_size.each do |v|
    temp_pizza += "#{v} pizza."
    sizey = size().index(v)
    actual_price = size_price()[sizey]
    temp_price += actual_price
  end
  price += temp_price.to_s

  session[:price] = price
  session[:pizza] = temp_pizza





  redirect'/pizza_page1' 
 
end

get '/pizza_page1' do
  erb :pizza_about
end

post '/pizza_about' do 
  redirect 'pizza_about'
end
