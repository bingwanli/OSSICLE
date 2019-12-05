class ChangeDesignerColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :designer, :is_designer
    change_column :users, :is_designer, 'boolean USING CAST(is_designer AS boolean)'
  end
end
