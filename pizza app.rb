def meats()   
 ["pepperoni", "sausage", "ham", "bacon", "chicken", "beef-wellington"]
end
def meat_price()
    [1.25, 1.50, 3.35, 0.80, 1.00, 2.99  ]
end
def cheese()
    cheese = ["pepperjack", "colbyjack", "parmesan", "mozzerella", "blue cheese", "nacho"]
    cheese[0..5]
end
def cheese_price()
    cheese = [1.00, 0.75, 1.00, 2.94, 1.23, 2.54]
end
def veggies()
    veggies = ["onion", "bell pepper", "jalapenos", "habenero", "banana peppers", "olives",]
    veggies[0..5]
end
def veggies_price()
    veggies = [2.50, 1.00, 2.00, 1.00, 2.00, 1.00]
end
def sauce()
    sauce = ["tomato", "white", "ranch"] #ewww mayo lmao
    sauce[0..2]
end
def sauce_price()
    sauce = [2.00, 1.50, 1.00, 2.15]
end
def size()
    size = ["10 inch", "25 inch", "66 inch"]
    size[0..2]
end 
def size_price()
    size = [2.00, 9.00, 14.25]
end
# def side_orders()
#     sides = ["wings", "breadsticks", "soup", "cheesesticks"]
#     sides [0..3]
# end
# def side_orders_price()
#     sides = [6.99, 6.00, 0.25, 6.99]
# end
def cls
    system ('cls')
end
def pizzaria(anything, miles)
    cls
    # puts "to choose what you want,enter the assigned number"
    # puts "what meat toppings do you want on your pizza?"; print "#{meats()} : "; p_meats = $stdin.gets.chomp.to_i; cls
    # puts "what kind of cheese do you want on your pizza?"; print "#{cheese()} : "; p_cheese = $stdin.gets.chomp.to_i; cls
    # puts "what kind of veggies do you want on your pizza?"; print "#{veggies()} : "; p_veggies = $stdin.gets.chomp.to_i; cls
    # puts "what kind of sauce do you want on your pizza?"; print "#{sauce()} : "; p_sauce = $stdin.gets.chomp.to_i; cls
    # puts "what size would you like your pizza to be?"; print "#{size()} : "; p_size = $stdin.gets.chomp.to_i; cls
    # puts "what sides do you want with that?"; print "#{side_orders()} : "; sides = $stdin.gets.chomp.to_i; cls
    price = 0

    # puts "do you wnat it delivered y/n?"
    #     answer = gets.chomp
    # if mything == "yes" 
    #     price = (price + 5) + (0.40 * miles) 
        
        
    # end
    price = (price + 5) + (0.4 * miles.to_i)
     total = price * 1.16; #puts "that will be $#{total.round(2)}, after tax."
    #  price.split('')
    price += meat_price[meats - 1] + cheese_price[cheese - 1] + veggies_price[veggies - 1] + sauce_price[sauce - 1] + size_price[size - 1] + side_orders_price[sides - 1]
    return price.to_s
#     puts "enjoy your #{size[size - 1]}, #{meats[meats - 1]}, #{cheese[cheese - 1]}, #{veggies[veggies - 1]}, #{sauce[sauce - 1]} pizza"; puts "enjoy your side of #{sides}"
 end
# pizzaria()

    