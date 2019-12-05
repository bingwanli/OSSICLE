class Shoe < ApplicationRecord
  belongs_to :moodboard
  belongs_to :user
  validates :votes, numericality: { only_integer: true, allow_nil: true }
  validates :shoe_photo, presence: true, uniqueness: true
  validates :detail, presence: true
  validates :moodboard, presence: true
  mount_uploader :shoe_photo, ShoePhotoUploader
end
