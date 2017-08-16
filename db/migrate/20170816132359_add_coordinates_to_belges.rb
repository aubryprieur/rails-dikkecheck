class AddCoordinatesToBelges < ActiveRecord::Migration[5.1]
  def change
    add_column :belges, :latitude, :float
    add_column :belges, :longitude, :float
  end
end
