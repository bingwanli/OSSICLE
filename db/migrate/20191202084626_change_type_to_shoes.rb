class ChangeTypeToShoes < ActiveRecord::Migration[5.2]
  def change
    rename_column :shoes, :type, :shoe_type
  end
end
