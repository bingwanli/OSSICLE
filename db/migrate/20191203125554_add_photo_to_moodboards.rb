class AddPhotoToMoodboards < ActiveRecord::Migration[5.2]
  def change
    add_column :moodboards, :photo, :string
  end
end
