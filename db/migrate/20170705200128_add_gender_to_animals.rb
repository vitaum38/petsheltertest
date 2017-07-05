class AddGenderToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :gender, :integer
  end
end
