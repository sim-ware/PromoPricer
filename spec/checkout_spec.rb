require "checkout"


describe Checkout do
  before(:each) do
    @Checkout = Checkout.new
  end

  describe ".initialize" do
    context "Creates a new Checkout Object" do
      it "should have an empty Basket Array" do
        expect(@Checkout.basket).to eql([])
      end
    end
  end
end
