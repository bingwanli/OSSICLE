class Moodboard < ApplicationRecord
  belongs_to :user

  validates :shoe_type, presence: true
  validates :is_finished, inclusion: { in: [true, false] }
  validates :votes, numericality: { only_integer: true, allow_nil: true }
  validates :detail, presence: true

  mount_uploader :photo, PhotoUploader

end
