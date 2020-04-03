require 'rails_helper'

describe Mechanic do
  describe "relationships" do
    it { should have_many :rides }
  end
end
