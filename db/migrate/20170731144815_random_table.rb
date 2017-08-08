class RandomTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  	  t.string :name
  	  t.string :password_digest
  		t.timestamps
  		end

  	create_table :images do |t|
  		t.string :user_id
  		t.string :image
      t.string :category, array: true, default: []
 			t.timestamps
			end
	end
end
