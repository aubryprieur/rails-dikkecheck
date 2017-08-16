class AddAddressToBelges < ActiveRecord::Migration[5.1]
  def change
    add_column :belges, :address, :string
  end
end
