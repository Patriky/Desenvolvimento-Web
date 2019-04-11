class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :gender
      t.text :synopsis
      t.string :img
      t.string :director

      t.timestamps
    end
  end
end
