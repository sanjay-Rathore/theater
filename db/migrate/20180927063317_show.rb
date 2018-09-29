class Show < ActiveRecord::Migration[5.2]
  def change
  	create_table :shows do |t|
      t.integer :time
      t.integer :available_seats
      t.integer :movie_id
      t.integer :audi_id
      t.timestamps
  	end
  end
end
