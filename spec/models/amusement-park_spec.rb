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

    it "returns rides sorted by name" do
      park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
      ride_1 = park_1.rides.create({name: "B", thrill: 5})
      ride_2 = park_1.rides.create({name: "C", thrill: 3})
      ride_3 = park_1.rides.create({name: "A", thrill: 3})

      expect(park_1.rides_sorted).to eq([ride_3, ride_1, ride_2])
    end
  end
end
