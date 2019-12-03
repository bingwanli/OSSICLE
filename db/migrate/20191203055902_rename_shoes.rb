class RenameShoes < ActiveRecord::Migration[5.2]
  def change
    rename_table :shoes, :moodboards
  end
end
