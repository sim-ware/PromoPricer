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
  end
end
