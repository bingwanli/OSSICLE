class Shoe < ApplicationRecord
  belongs_to :moodboard
  belongs_to :user
  validates :votes, numericality: { only_integer: true, allow_nil: true }
  validates :photo_url, presence: true, uniqueness: true
  validates :detail, presence: true
end
