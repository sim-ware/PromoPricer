# Create a Price over 60,
# and a basket of more than one chair.
require_relative 'checkout'
require_relative 'promo'

item1 = {"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25}
item2 = {"ProductCode" => 002, "Name" => "Little table", "Price" => 45.00}
item3 = {"ProductCode" => 003, "Name" => "Funky Light", "Price" => 19.95}

promotional_rules = Promo.new
co = Checkout.new(promotional_rules)
co.scan(item2)
co.scan(item1)

puts co.basket
puts co.total
puts co.promo


# Call the Over 60 Method on it
puts co.promo.over_sixty(co.total)


# Call the Multiple Chair method on it
co.promo.multiple_chairs(co.basket)
puts co.basket
