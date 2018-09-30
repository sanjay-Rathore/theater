class CreateBookings < ActiveRecord::Migration[5.2]
  def change
  	create_table :bookings do |t|
  		t.integer :no_of_seats
  		t.integer :show_id
  		t.integer :user_id
  		t.integer :theater_id
  		t.timestamps
  	end
  end
end
