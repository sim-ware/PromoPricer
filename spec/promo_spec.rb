require "checkout"
require "db"
require "promo"


describe Checkout do
  before(:each) do
    # @Checkout = Checkout.new
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
        # expect(@Checkout.basket).to eql([{"ProductCode" => 001,
        #                                   "Name" => "Very Cheap Chair",
        #                                   "Price" => 9.25}])
      end
    end
  end

  describe ".multiple_chairs" do
    context "Applies Promo Rule if 2 or more 'Very Cheap Chairs' in Basket" do
      it "should change the price to 8.5" do
        # @Checkout.scan(@Db.class::DATA[0])
        # @Checkout.scan(@Db.class::DATA[1])
        # @Checkout.scan(@Db.class::DATA[2])
        # expect(@Checkout.total).to eql(74.2)
      end
    end
  end
end
