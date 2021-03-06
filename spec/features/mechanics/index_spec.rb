require 'rails_helper'

describe "mechanics show page" do
  it "lists all mechanics and their years of experience" do

    mechanic_1 = Mechanic.create({name: "David Tran", years_of_exp: 10})
    mechanic_2 = Mechanic.create({name: "Test Buddy", years_of_exp: 5})

    visit "/mechanics"

    expect(page).to have_content("All Mechanics")

    within(".mechanics-list") do
      expect(page).to have_link(mechanic_1.name)
      expect(page).to have_link(mechanic_2.name)
      expect(page).to have_content("#{mechanic_1.years_of_exp} years of experience")
      expect(page).to have_content("#{mechanic_2.years_of_exp} years of experience")
    end
  end
end
