class AddDetailToShoes < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :detail, :string
  end
end
