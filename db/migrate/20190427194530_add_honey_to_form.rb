class AddHoneyToForm < ActiveRecord::Migration[5.2]
  def change
  	add_column :responses, :honey, :string
  end
end
