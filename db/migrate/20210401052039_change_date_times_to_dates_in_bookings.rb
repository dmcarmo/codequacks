class ChangeDateTimesToDatesInBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :start_time, :start_date
    change_column :bookings, :start_date, :date
    rename_column :bookings, :end_time, :end_date
    change_column :bookings, :end_date, :date
  end
end
