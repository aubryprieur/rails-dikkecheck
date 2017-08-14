class CreateBelges < ActiveRecord::Migration[5.1]
  def change
    create_table :belges do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :photo
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
