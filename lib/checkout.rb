class Checkout
  def initialize(promo = false)
    @basket = []
    @promo = promo
  end

  def basket
    @basket
  end

  def promo
    @promo
  end

  def scan(item)
    @basket.push(item)
  end

  def total()
    # FIND OUT IF PROMOTIONAL_RULES IS ENABLED, IF SO CALL PROMO_TOTAL HERE
    # INSTEAD
    total = 0
    for item in @basket do
      total += item["Price"]
    end
    if @promo != false
      total = promo_total()
      # puts 'HEYEYEYEY'
      # @promo.multiple_chairs(@basket)
      # puts @promo.over_sixty(total)
      #
      # total = @promo.over_sixty(total)
    end
    # return total.round(2)
    return total.round(2)
  end

  def promo_total()
    # SIMPLE CALL TO USE PROMOTIONAL RULES HERE INSTEAD
    puts 'HEY'
    @promo.multiple_chairs(@basket)
    puts @basket
    total = 0
    for item in @basket do
      total += item["Price"]
    end
    total = @promo.over_sixty(total)
    # puts total
    return total.round(2)
  end
end
