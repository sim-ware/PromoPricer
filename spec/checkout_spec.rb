require "checkout"
require "db"


describe Checkout do
  before(:each) do
    @Checkout = Checkout.new
    @Db = Db.new
  end

  describe ".initialize" do
    context "Creates a new Checkout Object" do
      it "should have an empty Basket Array" do
        expect(@Checkout.basket).to eql([])
      end
    end
  end

  describe ".scan" do
    context "Adds an Item to the Basket" do
      it "should add an Item Hash to the Basket Array" do
        @Checkout.scan(@Db.class::DATA[0])
        expect(@Checkout.basket).to eql([{"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25}])
      end
    end
  end
end
