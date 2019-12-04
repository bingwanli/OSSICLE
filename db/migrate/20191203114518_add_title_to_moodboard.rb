class AddTitleToMoodboard < ActiveRecord::Migration[5.2]
  def change
    add_column :moodboards, :title, :string
  end
end

