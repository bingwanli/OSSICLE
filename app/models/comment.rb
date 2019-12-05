class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :moodboard

  validates :user_id, presence: true
  validates :moodboard_id, presence: true
  validates :comment, presence: true
end
