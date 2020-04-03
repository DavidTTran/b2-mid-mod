class AmusementPark < ApplicationRecord
  has_many :rides

  def average_thrill_rating
    rides.average(:thrill).to_f
  end

end
