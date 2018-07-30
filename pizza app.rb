def meats()   
 ["pepperoni", "sausage", "ham", "bacon", "chicken", "beef-wellington"]
end
def meat_price()
    [0.25, 0.50, 0.35, 0.80, 1.00, 0.99  ]
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
    veggies = [0.50, 1.00, 2.00, 3.00, 2.00, 1.00]
end
def sauce()
    sauce = ["tomato sauce", "white sauce", "ranch", "mayo"] #ewww mayo lmao
    sauce[0..3]
end
def sauce_price()
    sauce = [1.00, 0.50, 2.00, 0.15]
end
def size()
    size = ["10 inch", "25 inch", "66 inch"]
    size[0..2]
end 
def size_price
    size = [10.00, 32.00, 65.25]
end
def side_orders()
    sides = ["wings", "breadsticks", "soup", "cheesesticks"]
    sides [0..3]
end
def side_orders_price()
    sides = [6.99, 6.00, 0.25, 6.99]
end
def cls
    system ('cls')
end
def pizzaria()
    cls
    puts "to choose what you want,enter the assigned number"
    puts "what meat toppings do you want on your pizza?"; print "#{meats()} : "; p_meats = $stdin.gets.chomp.to_i; cls
    puts "what kind of cheese do you want on your pizza?"; print "#{cheese()} : "; p_cheese = $stdin.gets.chomp.to_i; cls
    puts "what kind of veggies do you want on your pizza?"; print "#{veggies()} : "; p_veggies = $stdin.gets.chomp.to_i; cls
    puts "what kind of sauce do you want on your pizza?"; print "#{sauce()} : "; p_sauce = $stdin.gets.chomp.to_i; cls
    puts "what size would you like your pizza to be?"; print "#{size()} : "; p_size = $stdin.gets.chomp.to_i; cls
    puts "what sides do you want with that?"; print "#{side_orders()} : "; sides = $stdin.gets.chomp.to_i; cls
    price = 0
    puts "do you wnat it delivered y/n?"
        answer = gets.chomp
    if answer == "y" ; puts " how many miles away is the foods destination?"; miles = gets.chomp.to_i; cls
         if miles >= 50 
             (price + 5) + (0.40 * miles) 
         else; price + 5
         end
     end
     total = price * 1.16; puts "that will be $#{total.round(2)}, after tax."
    price += meat_price[p_meats - 1] + cheese_price[p_cheese - 1] + veggies_price[p_veggies - 1] + sauce_price[p_sauce - 1] + size_price[p_size - 1] + side_orders_price[sides - 1]
    puts "enjoy your #{size[p_size - 1]}, #{meats[p_meats - 1]}, #{cheese[p_cheese - 1]}, #{veggies[p_veggies - 1]}, #{sauce[p_sauce - 1]} pizza"; puts "enjoy your side of #{sides}"
end
# pizzaria()