# Create a Price over 60,
# and a basket of more than one chair.
require_relative 'checkout'
require_relative 'promo'

item1 = {"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25}
item2 = {"ProductCode" => 002, "Name" => "Little table", "Price" => 45.00}
item3 = {"ProductCode" => 003, "Name" => "Funky Light", "Price" => 19.95}

promotional_rules = Promo.new
co = Checkout.new(promotional_rules)
# co = Checkout.new()

# TEST1
co.scan(item1)
co.scan(item2)
co.scan(item3)

# TEST2
# co.scan(item1)
# co.scan(item3)
# co.scan(item1)

# TEST3
# co.scan(item1)
# co.scan(item2)
# co.scan(item1)
# co.scan(item3)



puts co.basket
puts co.total
puts co.basket
