class RenameStatusToIsFinished < ActiveRecord::Migration[5.2]
  def change
    rename_column :shoes, :status, :is_finished

  end
end
