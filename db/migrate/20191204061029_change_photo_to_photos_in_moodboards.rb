class ChangePhotoToPhotosInMoodboards < ActiveRecord::Migration[5.2]
  def change
    rename_column :moodboards, :photo, :photos
  end
end
