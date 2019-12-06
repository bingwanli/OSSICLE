class Shoe < ApplicationRecord
  belongs_to :moodboard
  belongs_to :user
  mount_uploader :image, ShoePhotoUploader

  validates :votes, numericality: { only_integer: true, allow_nil: true }
  validates :detail, presence: true
  validates :moodboard, presence: true

end
