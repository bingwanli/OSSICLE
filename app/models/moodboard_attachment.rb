class MoodboardAttachment < ApplicationRecord
  belongs_to :moodboard
  mount_uploader :image, ImageUploader
end
