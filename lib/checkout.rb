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
    return total
  end

  def promo_total()
    # SIMPLE CALL TO USE PROMOTIONAL RULES HERE INSTEAD
  end
end
