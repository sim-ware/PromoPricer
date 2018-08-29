Dir["./lib/*.rb"].each {|file| require file }
################################################################################
# SETUP #
################################################################################
db = Db.new
item1 = db.class::DATA[0]
item2 = db.class::DATA[1]
item3 = db.class::DATA[2]
promotional_rules = Promo.new

################################################################################
# TEST 1 #
#########
co = Checkout.new(promotional_rules)
co.scan(item1)
co.scan(item2)
co.scan(item3)
price = co.total
#
basket = co.basket.map{|x| x["ProductCode"]}
puts "================================================="
puts "Test 1:"
puts "Basket: 00"+basket.join(",00")
puts 'Total price expected: ' + sprintf("£%2.2f", price)

################################################################################
# TEST 2 #
#########
co = Checkout.new(promotional_rules)
co.scan(item1)
co.scan(item3)
co.scan(item1)
price = co.total
#
basket = co.basket.map{|x| x["ProductCode"]}
puts "================================================="
puts "Test 2:"
puts "Basket: 00"+basket.join(",00")
puts 'Total price expected: ' + sprintf("£%2.2f", price)

################################################################################
# TEST 3 #
#########
co = Checkout.new(promotional_rules)
co.scan(item1)
co.scan(item2)
co.scan(item1)
co.scan(item3)
price = co.total
#
basket = co.basket.map{|x| x["ProductCode"]}
puts "================================================="
puts "Test 3:"
puts "Basket: 00"+basket.join(",00")
puts 'Total price expected: ' + sprintf("£%2.2f", price)

################################################################################
