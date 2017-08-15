class ChangePriceToStringToBelges < ActiveRecord::Migration[5.1]
  def change
    change_column :belges, :price, :string
  end
end
