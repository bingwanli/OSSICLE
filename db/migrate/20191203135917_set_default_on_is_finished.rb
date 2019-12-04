class SetDefaultOnIsFinished < ActiveRecord::Migration[5.2]
  def change
    change_column :moodboards, :is_finished, :boolean, default: false
  end
end
