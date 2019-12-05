class ChangePhotoUrlToShoePhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :shoes, :photo_url, :shoe_photo
  end
end
