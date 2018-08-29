require "checkout"
require "db"
require "promo"


describe Checkout do
  before(:each) do
    @Db = Db.new
    @Promotional_rules = Promo.new
  end

  describe ".new" do
    context "Creates a new Promotional Pricer" do
      it "returns a Promo Object" do
        expect(@Promotional_rules.class).to eql(Promo)
      end
    end
  end

  describe ".over_sixty" do
    context "Applies Promo Rule if Total is greater than 60" do
      it "should take 10% off the total" do
        co = Checkout.new(@Promotional_rules)
        co.scan(@Db.class::DATA[0])
        co.scan(@Db.class::DATA[1])
        co.scan(@Db.class::DATA[2])
        expect(co.total).to eql(66.78)
      end
    end
  end

  describe ".multiple_chairs" do
    context "Don't Apply Promo Rule if 1 or less 'Very Cheap Chairs' in Basket" do
      it "should not change the price" do
        ct = Checkout.new(@Promotional_rules)
        ct.scan(@Db.class::DATA[0])
        ct.scan(@Db.class::DATA[1])
        ct.scan(@Db.class::DATA[2])
        expect(ct.basket[0]["Price"]).to eql(9.25)
      end
    end
  end
    context "Applies Promo Rule if 2 or more 'Very Cheap Chairs' in Basket" do
      it "should change the price to 8.5" do
        co = Checkout.new(@Promotional_rules)
        co.scan(@Db.class::DATA[0])
        co.scan(@Db.class::DATA[0])
        co.scan(@Db.class::DATA[0])
        total = co.total()
        expect(co.basket[0]["Price"]).to eql(8.5)
      end
    end
end
