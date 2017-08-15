class CreateBelgeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :belge_categories do |t|
      t.references :category, foreign_key: true
      t.references :belge, foreign_key: true

      t.timestamps
    end
  end
end
