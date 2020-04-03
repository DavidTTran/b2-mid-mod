require 'rails_helper'

describe Mechanic do
  describe "relationships" do
    it { should have_many :rides }
  end

  describe "methods" do
    describe "#rides_sorted" do
      it "returns an array of rides sorted by names alphabetically" do
        mechanic_1 = Mechanic.create({name: "David Tran", years_of_exp: 10})
        park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
        ride_1 = park_1.rides.create({name: "B", thrill: 5})
        ride_2 = park_1.rides.create({name: "A", thrill: 9})
        ride_3 = park_1.rides.create({name: "C", thrill: 9})
        RideMechanic.create(mechanic: mechanic_1, ride: ride_1)
        RideMechanic.create(mechanic: mechanic_1, ride: ride_2)
        RideMechanic.create(mechanic: mechanic_1, ride: ride_3)

        expect(mechanic_1.rides_sorted).to eq([ride_2, ride_1, ride_3])
      end
    end
  end
end
