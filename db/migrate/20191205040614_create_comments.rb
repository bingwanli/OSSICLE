class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :moodboard, foreign_key: true
      t.integer :votes
      t.text :comment

      t.timestamps
    end
  end
end
