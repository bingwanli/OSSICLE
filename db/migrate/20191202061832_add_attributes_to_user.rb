class AddAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prof_pic, :string
    add_column :users, :name, :string
    add_column :users, :designer, :integer
    add_column :users, :bio, :string
  end
end
