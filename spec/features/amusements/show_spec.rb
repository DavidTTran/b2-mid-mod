require 'rails_helper'

describe "amusments park show page" do
  it "displays name, price, average thrill, and list of rides in alphabetical" do

    park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
    ride_1 = park_1.rides.create({name: "Lightning Racer", thrill: 5})
    ride_2 = park_1.rides.create({name: "Storm Runner", thrill: 9})
    ride_3 = park_1.rides.create({name: "The Greate Bear", thrill: 7})

    visit "/amusement-parks/#{park_1.id}"

    expect(page).to have_content(park_1.name)
    expect(page).to have_content("Admissions: $#{park_1.admission}")
    expect(page).to have_content(ride_1.name)
    expect(page).to have_content(ride_2.name)
    expect(page).to have_content(ride_3.name)
    expect(page).to have_content("Average Thrill Rating of Rides: 7.0/10")

  end

end
