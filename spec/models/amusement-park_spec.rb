require 'rails_helper'

describe AmusementPark do
  describe "relationships" do
    it { should have_many :rides }
  end

  describe "methods" do
    it "returns average thrill rating of rides" do

      park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
      park_1.rides.create({name: "Lightning Racer", thrill: 5})
      park_1.rides.create({name: "Storm Runner", thrill: 3})

      expect(park_1.average_thrill_rating).to eq(4.0)
    end
  end
end
