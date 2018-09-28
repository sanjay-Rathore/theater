class Shows < ActiveRecord::Migration[5.2]
  def change
  	create_table :shows do |t|
  		t.string :time
  		t.string :available_seats
  		t.integer :audi_id
  		t.integer :movie_id
  		t.timestamps
  	end
  end
end
