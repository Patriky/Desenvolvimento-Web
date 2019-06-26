class AddPriceToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :price, :float
  end
end
