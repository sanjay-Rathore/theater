class User < ActiveRecord::Migration[5.2]
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :age
  		t.string :phone_no
  		t.timestamps
  	end
  end
end
