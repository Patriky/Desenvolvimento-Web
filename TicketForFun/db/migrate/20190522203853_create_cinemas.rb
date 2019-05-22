class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|

      t.string :name
      t.string :city
      t.string :type_of_establishment
      

      t.timestamps
    end
  end
end
