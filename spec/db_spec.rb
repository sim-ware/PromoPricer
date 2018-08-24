require "db"


describe Db do
  before(:each) do
    @Db = Db.new
  end

  describe ".new" do
    context "Creates a new Db Object" do
      it "returns List of Hashes Replicating Test Data" do
        expect(@Db.class::DATA[0]['ProductCode']).to eql(001)
        expect(@Db.class::DATA[1]['ProductCode']).to eql(002)
        expect(@Db.class::DATA[2]['ProductCode']).to eql(003)

        expect(@Db.class::DATA[0]['Name']).to eql('Very Cheap Chair')
        expect(@Db.class::DATA[1]['Name']).to eql('Little table')
        expect(@Db.class::DATA[2]['Name']).to eql('Funky Light')

        expect(@Db.class::DATA[0]['Price']).to eql(9.25)
        expect(@Db.class::DATA[1]['Price']).to eql(45.0)
        expect(@Db.class::DATA[2]['Price']).to eql(19.95)
      end
    end
  end
end
