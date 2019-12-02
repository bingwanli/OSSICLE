class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :type
      t.string :moodboard
      t.integer :status
      t.integer :votes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
