require_relative 'checkout'


item1 = {"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25}
item2 = {"ProductCode" => 002, "Name" => "Little table", "Price" => 45.00}
item3 = {"ProductCode" => 003, "Name" => "Funky Light", "Price" => 19.95}

co = Checkout.new
co.scan(item1)
co.scan(item2)
# co.scan(item1)
co.scan(item3)

# REGULAR TOTAL
total = 0
co.basket.each do |item|
  total += item["Price"]
end
puts total

# If you spend over £60, then you get 10% off of your purchase.
# If you buy 2 or more very cheap chairs then the price drops to £8.50.
# Basket: 001,002,001,003
# Total price expected: £73.76

# check if 2 or more 'Very Cheap Chairs'
yep = co.basket.map{|x|x["ProductCode"]}
chair_count = yep.select{|x| x == 1 }

if chair_count.length >= 2
   co.basket[0]["Price"]=8.5
end

# check if over #60
promo_total = 0
for item in co.basket do
  promo_total += item["Price"]
end

if promo_total > 60
promo_total = promo_total * 0.9
promo_total = promo_total.round(2)
end

puts promo_total
