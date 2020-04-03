class Mechanic < ApplicationRecord
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics

  def rides_sorted
    rides.order(:name)
  end
end
