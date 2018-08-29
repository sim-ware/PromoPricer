class Promo
  def over_sixty(total)
    if total > 60
    total = total * 0.9
    total = total.round(2)
    end
  end

  def multiple_chairs(basket)
    arr = basket.map{|x|x["ProductCode"]}
    chair_count = arr.select{|x| x == 1 }

    if chair_count.length >= 2
       basket[0]["Price"]=8.5
    end
  end
end
