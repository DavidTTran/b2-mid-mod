require 'rails_helper'

describe "mechanics show page" do
  before(:each) do
    @mechanic_1 = Mechanic.create({name: "David Tran", years_of_exp: 10})

    @park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
    @ride_1 = @park_1.rides.create({name: "Lightning Racer", thrill: 5})
    @ride_2 = @park_1.rides.create({name: "Storm Runner", thrill: 9})
    @ride_3 = @park_1.rides.create({name: "The Great Bear", thrill: 7})

    @ride_mech_1 = RideMechanic.create(mechanic: @mechanic_1, ride: @ride_1)
    @ride_mech_2 = RideMechanic.create(mechanic: @mechanic_1, ride: @ride_3)

  end
  it "displays the names of all the rides they work on" do
    visit "/mechanics/#{@mechanic_1.id}"

    expect(page).to have_content("Current rides they're working on:")
    expect(page).to have_content(@ride_1.name)
    expect(page).to have_content(@ride_3.name)
  end

  it "displays a form to add an existing ride" do
    visit "/mechanics/#{@mechanic_1.id}"

    expect(page).to have_content("Add a ride to workload:")
    fill_in :ride_id, with: @ride_2.id
    click_on "Submit"

    expect(current_path).to eq("/mechanics/#{@mechanic_1.id}")
    expect(page).to have_content(@ride_1.name)
    expect(page).to have_content(@ride_2.name)
    expect(page).to have_content(@ride_3.name)
  end
end
