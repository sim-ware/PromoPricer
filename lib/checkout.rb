class Checkout
  def initialize()
    @basket = []
  end

  def basket
    @basket
  end

  def scan(item)
    @basket.push(item)
  end

  def total()
    total = 0
    for item in @basket do
      total += item["Price"]
    end
    return total
  end

  def promo_total()
  end
end
