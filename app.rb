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
  price = session[:delivery_price] || ""
  pizza = session[:temp_pizza] || ""

 
   erb :pizza_page1, locals:{meats: meats,  cheese: cheese, veggies: veggies, sauce: sauce, size: size, pizza: pizza, price: price}

  
end

post '/pizzy' do
  # puts "in post pizzy params are #{params}"
  meats = params[:thingy]
  meat_price = params[:thingy]
  pood = params[:thingy6]
  state = params[:thingy11]
  city = params[:thingy12]
  street = params[:thingy13]
  miles = params[:thingythingy]
  doop = params[:thingy1] || []
  cheese = params[:thingy2] || []
  veggies = params[:thingy3] || []
  sauce = params[:thingy4] || []
  doop_size = params[:thingy5] || []

  
  session[:meats] = doop
  session[:cheese] = cheese
  session[:veggies] = veggies
  session[:sauce] = sauce
  session[:miles] = miles
  session[:state] = state
  session[:city] = city
  session[:street] = street
  session[:size] = doop_size
  





  redirect'/confirm_pizza' 
 
end

get '/pizzy_about' do
  erb :pizza_about
  
end

post '/pizza_about' do 
  redirect 'pizza_about'
end

get '/confirm_pizza' do
  erb :confirm_pizza, locals: {size: session[:size][0], meats: session[:meats], veggies: session[:veggies], cheese: session[:cheese], sauce: session[:sauce], miles: session[:miles]}
end

post '/pizzy_confirm' do
  miles = params[:miles]
select_meat0 = params[:confirm_meat0] || ""
select_meat1 = params[:confirm_meat1] || ""
select_meat2 = params[:confirm_meat2] || ""
select_meat3 = params[:confirm_meat3] || ""
select_meat4 = params[:confirm_meat4] || ""
select_meat5 = params[:confirm_meat5] || ""
actual_meat = params[:ogmeats] || []
test_meat = [select_meat0, select_meat1, select_meat2, select_meat3, select_meat4, select_meat5]
puts "#{actual_meat}"
actual_meat.each_with_index do |v, i|
  puts "#{actual_meat}"
  if test_meat[i] == "no"
    actual_meat.delete(v)
  end
end


select_cheese0 = params[:confirm_cheese0] || ""
select_cheese1 = params[:confirm_cheese1] || ""
select_cheese2 = params[:confirm_cheese2] || ""
select_cheese3 = params[:confirm_cheese3] || ""
select_cheese4 = params[:confirm_cheese4] || ""
select_cheese5 = params[:confirm_cheese5] || ""
actual_cheese = params[:ogcheese] || []
test_cheese = [select_cheese0, select_cheese1, select_cheese2, select_cheese3, select_cheese4, select_cheese5]
actual_cheese.each_with_index do |v, i|
  if test_cheese == "no"
    actual_cheese.delete(v)
  end
end

select_veggies0 = params[:confirm_veggies0] || ""
select_veggies1 = params[:confirm_veggies1] || ""
select_veggies2 = params[:confirm_veggies2] || ""
select_veggies3 = params[:confirm_veggies3] || ""
select_veggies4 = params[:confirm_veggies4] || ""
select_veggies5 = params[:confirm_veggies5] || ""
actual_veggies = params[:ogveggies] || []
test_veggies = [select_veggies0, select_veggies1, select_veggies2, select_veggies3, select_veggies4, select_veggies5]

actual_veggies.each_with_index do |v, i|
  if test_veggies == "no"
    actual_veggies.delete(v)
  end
end

select_sauce0 = params[:confirm_sauce0] || ""
select_sauce1 = params[:confirm_sauce1] || ""
select_sauce2 = params[:confirm_sauce2] || ""
actual_sauce = params[:ogsauce] || []
test_sauce = [select_sauce0, select_sauce1, select_sauce2]
actual_sauce.each_with_index do |v, i|
  if test_sauce == "no"
    actual_sauce.delete(v)
  end
end
actual_size = params[:size] || ""
select_size = params[:confirm_size] || ""
if select_size == "no"
  redirect '/pizza_page1'
end






temp_pizza = " Your pizza will have, "
  price = "With delivery and tip will be, "
  temp_price = 0
  actual_meat.each do |v|
    temp_pizza += "#{v}, "
    meaty = meats().index(v)
    actual_price = meat_price()[meaty]
    temp_price += actual_price
  end

  
  actual_cheese.each do |v|
    temp_pizza += "#{v}, "
    cheesy = cheese().index(v)
    actual_price = cheese_price()[cheesy]
    temp_price += actual_price
  end

  
  actual_veggies.each do |v|
    temp_pizza += "#{v}, "
    veggy = veggies().index(v)
    actual_price = veggies_price()[veggy]
    temp_price += actual_price
  end

  
  actual_sauce.each do |v|
    temp_pizza += "#{v} sauce, "
    saucy= sauce().index(v)
    actual_price = sauce_price()[saucy]
    temp_price += actual_price
  end

  
    temp_pizza += "#{actual_size} , that will cost "
    sizey = size().index(actual_size)
    actual_price = size_price()[sizey]
    temp_price += actual_price
  

session[:price] = "#{temp_price.round(2)}"
session[:delivery_price] = ((temp_price + 3) + (1 * miles.to_i )).to_s


session[:miles] = miles
session[:temp_pizza] = temp_pizza


redirect '/pizza_page1'

end


