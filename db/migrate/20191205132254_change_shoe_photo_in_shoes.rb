class ChangeShoePhotoInShoes < ActiveRecord::Migration[5.2]
  def change
    change_column :shoes, :shoe_photo, :string
  end
end
