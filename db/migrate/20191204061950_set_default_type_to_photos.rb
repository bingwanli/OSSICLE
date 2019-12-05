class SetDefaultTypeToPhotos < ActiveRecord::Migration[5.2]
  def change
    change_column :moodboards, :photos, :string
  end
end
