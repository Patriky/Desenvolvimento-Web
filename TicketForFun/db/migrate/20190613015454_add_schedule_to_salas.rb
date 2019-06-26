class AddScheduleToSalas < ActiveRecord::Migration[5.2]
  def change
    add_column :salas, :schedule, :integer
  end
end
