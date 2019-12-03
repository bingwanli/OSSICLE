class DeleteColumnMoodboard < ActiveRecord::Migration[5.2]
  def change
    remove_column(:shoes, :moodboard)
  end
end
