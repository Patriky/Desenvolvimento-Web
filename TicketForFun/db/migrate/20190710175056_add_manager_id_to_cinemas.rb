class AddManagerIdToCinemas < ActiveRecord::Migration[5.2]
  def change
  	add_column :cinemas, :manager_id, :integer
  end
end
