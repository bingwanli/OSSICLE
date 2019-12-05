class CreateMoodboardAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :moodboard_attachments do |t|
      t.references :moodboard, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
