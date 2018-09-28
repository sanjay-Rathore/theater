class Audis < ActiveRecord::Migration[5.2]
  def change
  	create_table :audis do |t|
  		t.string :no
  		t.string :no_of_seats
  		t.integer :theater_id 
  		t.timestamps
  	end
  end
end
