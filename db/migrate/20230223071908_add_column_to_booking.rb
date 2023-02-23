class AddColumnToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :number_of_people, :integer
  end
end
