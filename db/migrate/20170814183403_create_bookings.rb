class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :status
      t.text :message
      t.references :user, foreign_key: true
      t.references :belge, foreign_key: true

      t.timestamps
    end
  end
end
