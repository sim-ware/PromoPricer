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
    total = 0
    
    if @promo != false then @promo.multiple_chairs(@basket) end

    @basket.each do |item|
      total += item["Price"]
    end

    if @promo != false then total = @promo.over_sixty(total) end

    return total.round(2)
  end

end
