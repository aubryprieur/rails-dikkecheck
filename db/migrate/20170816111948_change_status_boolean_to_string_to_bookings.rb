class ChangeStatusBooleanToStringToBookings < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :status, :string
  end
end
