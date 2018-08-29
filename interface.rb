Dir["./lib/*.rb"].each {|file| require file }


db = Db.new
item1 = db.class::DATA[0]
item2 = db.class::DATA[1]
item3 = db.class::DATA[2]

promotional_rules = Promo.new

# co = Checkout.new(promotional_rules)
# co_default = Checkout.new

# TEST1
# co.scan(item1)
# co.scan(item2)
# co.scan(item3)

# TEST2
# co.scan(item1)
# co.scan(item3)
# co.scan(item1)

# TEST3
# co.scan(item1)
# co.scan(item2)
# co.scan(item1)
# co.scan(item3)

# RETURN TOTAL
# puts co.total
# puts co.basket


################################################################################
# TEST 1 #
#########
co = Checkout.new(promotional_rules)
co.scan(item1)
co.scan(item2)
co.scan(item3)
price = co.total
#
puts co.basket
puts price


################################################################################
# TEST 2 #
#########
co = Checkout.new(promotional_rules)
co.scan(item1)
co.scan(item3)
co.scan(item1)
price = co.total
#
puts co.basket
puts price


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
puts co.basket
puts price


################################################################################
