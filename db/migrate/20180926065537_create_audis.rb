class CreateAudis < ActiveRecord::Migration[5.2]
  def change
  	 create_table :audis do |t|
      t.integer :num
      t.integer :no_of_seats
      t.integer :theater_id
      t.timestamps
  	end
  end
end
