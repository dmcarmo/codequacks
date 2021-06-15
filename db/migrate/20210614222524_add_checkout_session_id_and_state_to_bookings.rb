class AddCheckoutSessionIdAndStateToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :checkout_session_id, :string
    add_column :bookings, :state, :string
  end
end
