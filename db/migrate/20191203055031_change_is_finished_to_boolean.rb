class ChangeIsFinishedToBoolean < ActiveRecord::Migration[5.2]
  def change
    change_column :shoes, :is_finished, 'boolean USING CAST(is_finished AS boolean)'
  end
end
