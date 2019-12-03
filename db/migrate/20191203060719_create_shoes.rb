class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.references :moodboard, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :votes
      t.text :photo_url
      t.text :detail

      t.timestamps
    end
  end
end
