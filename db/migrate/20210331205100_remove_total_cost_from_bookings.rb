class RemoveTotalCostFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :total_cost, :float
  end
end
