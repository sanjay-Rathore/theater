class Bookings < ActiveRecord::Migration[5.2]
  def change
  	create_table :Bookings do |t|
  		t.string :no_of_seats
  		t.timestamps
  	end
  end
end
