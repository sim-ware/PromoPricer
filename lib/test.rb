require_relative 'checkout'


item1 = {"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25}
item2 = {"ProductCode" => 002, "Name" => "Little table", "Price" => 45.00}
item3 = {"ProductCode" => 003, "Name" => "Funky Light", "Price" => 19.95}

co = Checkout.new
co.scan(item1)
co.scan(item2)
co.scan(item3)

total = 0
for item in co.basket do
  puts item
  total += item["Price"]
end

puts total
