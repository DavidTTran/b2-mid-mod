class CreateAmusementPark < ActiveRecord::Migration[5.1]
  def change
    create_table :amusement_parks do |t|
      t.string :name
      t.float :admission
    end
  end
end
