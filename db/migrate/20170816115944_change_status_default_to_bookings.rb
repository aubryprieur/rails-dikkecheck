class ChangeStatusDefaultToBookings < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :status, :string, :default => "Demande en cours"
  end
end
