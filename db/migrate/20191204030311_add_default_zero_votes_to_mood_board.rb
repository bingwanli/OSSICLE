class AddDefaultZeroVotesToMoodBoard < ActiveRecord::Migration[5.2]
  def change
    change_column :moodboards, :votes, :integer, default: 0
  end
end
