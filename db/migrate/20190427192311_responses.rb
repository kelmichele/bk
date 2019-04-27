class Responses < ActiveRecord::Migration[5.2]
  def change
  	create_table :responses do |t|
    	t.string :name
    	t.string :status
      t.string :guest_count

      t.timestamps
    end
  end
end
