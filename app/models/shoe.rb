class Shoe < ApplicationRecord
  belongs_to :user
  validates :shoe_type, presence: true
  validates :moodboard, presence: true, uniqueness: true
  validates :status, inclusion: { in: [0, 1] }
  validates :votes, numericality: { only_integer: true, allow_nil: true }
end
