class CreateSalas < ActiveRecord::Migration[5.2]
  def change
    create_table :salas do |t|
    	t.string :name
    	t.integer :capacity

      t.timestamps
    end
  end
end
