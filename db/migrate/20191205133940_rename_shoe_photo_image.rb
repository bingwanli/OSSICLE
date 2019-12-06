class RenameShoePhotoImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :shoes, :shoe_photo, :image
  end
end
